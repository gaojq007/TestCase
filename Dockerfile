FROM golang:1.5.3

# Set the default timezone to Shanghai
RUN echo "Asia/Shanghai" > /etc/timezone
RUN dpkg-reconfigure -f noninteractive tzdata

# Build Testcase
WORKDIR /root
COPY . /root
RUN go build -race .

CMD ["/TestCase"]
