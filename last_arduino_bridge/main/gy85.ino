 

#define ADXL345 0x53 // Device address as specified in data sheet //ADXL345 accelerometer
#define HMC5883 0x1E //0011110b, I2C 7bit address of HMC5883
#define ITG3200 0x68

int m_gyro_fix_x, m_gyro_fix_y, m_gyro_fix_z;
int m_acc_fix_x, m_acc_fix_y, m_acc_fix_z;
int m_compass_fix_x, m_compass_fix_y, m_compass_fix_z;


    void gy85_init()
    {
        m_gyro_fix_x = m_gyro_fix_y = m_gyro_fix_z = 0;
        m_acc_fix_x = m_acc_fix_y = m_acc_fix_z = 0;
        m_compass_fix_x = m_compass_fix_y = m_compass_fix_z = 0;

        Wire.begin();
        SetupAccelerometor(); // setup accelerometor sensor;
        SetupCompass();
        SetupGyro();
    }

    void gy85_reset()
    {
        AccCalibrate();
        GyroCalibrate();
        CompassCalibrate();
    }


    void SetupAccelerometor()
    {
        Wire.beginTransmission(ADXL345);     // start transmission to device
        Wire.write(0x31);                 // send register address
        Wire.write(0x01);                 // send value to write
        Wire.endTransmission();             // end transmission

        //Put the ADXL345 into Measurement Mode by writing 0x08 to the POWER_CTL register.
        Wire.beginTransmission(ADXL345);     // start transmission to device
        Wire.write(0x2D);                 // send register address  //Power Control Register
        Wire.write(0x08);                 // send value to write
        Wire.endTransmission();             // end transmission

    }

    void SetupCompass()
    {
        //Put the HMC5883 IC into the correct operating mode
        Wire.beginTransmission(HMC5883);//open communication with HMC5883
        Wire.write(0x02);               //select mode register
        Wire.write(0x00);               //continuous measurement mode
        Wire.endTransmission();
    }

    void SetupGyro()
    {
        Wire.beginTransmission(ITG3200);
        Wire.write(0x3E);
        Wire.write(0x00);
        Wire.endTransmission();

        Wire.beginTransmission(ITG3200);
        Wire.write(0x15);
        Wire.write(0x07);
        Wire.endTransmission();

        Wire.beginTransmission(ITG3200);
        Wire.write(0x16);
        Wire.write(0x1E);   // +/- 2000 dgrs/sec, 1KHz, 1E, 19
        Wire.endTransmission();

        Wire.beginTransmission(ITG3200);
        Wire.write(0x17);
        Wire.write(0x00);
        Wire.endTransmission();

    }

    void GyroCalibrate()
    {
        int tmp[3] = { 0 };
        int tmp2[3] = { 0 };

        m_gyro_fix_x = m_gyro_fix_y = m_gyro_fix_z = 0;
        for (int i = 0; i < 10; i++) {
            ReadGyro(&tmp[0], &tmp[1], &tmp[2]);
            tmp2[0] += tmp[0];
            tmp2[1] += tmp[1];
            tmp2[2] += tmp[2];
            delay(100);
        }

        m_gyro_fix_x = tmp2[0] / 10;
        m_gyro_fix_y = tmp2[1] / 10;
        m_gyro_fix_z = tmp2[2] / 10;
    }

    void AccCalibrate()
    {
        int tmp[3] = { 0 };
        int tmp2[3] = { 0 };
        m_acc_fix_x = m_acc_fix_y = m_acc_fix_z = 0;

        for (int i = 0; i < 10; i++) {
            ReadAccelerometor(&tmp[0], &tmp[1], &tmp[2]);
            tmp2[0] += tmp[0];
            tmp2[1] += tmp[1];
            tmp2[2] += tmp[2];
            delay(100);
        }

        m_acc_fix_x = tmp2[0] / 10;
        m_acc_fix_y = tmp2[1] / 10;
        m_acc_fix_z = tmp2[2] / 10;
    }

    void CompassCalibrate()
    {
        int tmp[3] = { 0 };
        int tmp2[3] = { 0 };

        m_compass_fix_x = m_compass_fix_y = m_compass_fix_z = 0;
        for (int i = 0; i < 10; i++) {
            ReadCompass(&tmp[0], &tmp[1], &tmp[2]);
            tmp2[0] += tmp[0];
            tmp2[1] += tmp[1];
            tmp2[2] += tmp[2];
            delay(100);
        }

        m_compass_fix_x = tmp2[0] / 10;
        m_compass_fix_y = tmp2[1] / 10;
        m_compass_fix_z = tmp2[2] / 10;
    }

    void ReadAccelerometor(int* ax, int* ay, int* az)
    {
        Wire.beginTransmission(ADXL345);      // start transmission to device
        Wire.write(0x32);               // sends address to read from
        Wire.endTransmission();              // end transmission\
        Wire.requestFrom(ADXL345, 6, true);         // request 6 bytes from device

        int16_t tax = Wire.read() | Wire.read() << 8;
        int16_t tay = Wire.read() | Wire.read() << 8;
        int16_t taz = Wire.read() | Wire.read() << 8;

        *ax = tax - m_acc_fix_x;
        *ay = tay - m_acc_fix_y;
        *az = taz - m_acc_fix_z;
    }

    void ReadCompass(int* cx, int* cy, int* cz)
    {
        Wire.beginTransmission(HMC5883);
        Wire.write(0x03);               //select register 3, X MSB register
        Wire.endTransmission();


        Wire.requestFrom(HMC5883, 6);


        int16_t tcx = Wire.read() << 8 | Wire.read();
        int16_t tcz = Wire.read() << 8 | Wire.read();
        int16_t tcy = Wire.read() << 8 | Wire.read();

        *cx = tcx - m_compass_fix_x;
        *cy = tcy - m_compass_fix_y;
        *cz = tcz - m_compass_fix_z;
    }

    void ReadGyro(int* gx, int* gy, int* gz)
    {
        Wire.beginTransmission(ITG3200);
        Wire.write(0x1B);
        Wire.endTransmission();

        Wire.requestFrom(ITG3200, 8);    // request 8 bytes from ITG3200

        int16_t temp = Wire.read() << 8 | Wire.read();
        int16_t tgx = Wire.read() << 8 | Wire.read();
        int16_t tgy = Wire.read() << 8 | Wire.read();
        int16_t tgz = Wire.read() << 8 | Wire.read();

        *gx = tgx - m_gyro_fix_x;
        *gy = tgy - m_gyro_fix_y;
        *gz = tgz - m_gyro_fix_z;
    }
