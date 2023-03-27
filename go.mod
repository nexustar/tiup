module github.com/pingcap/tiup

go 1.18

replace gopkg.in/yaml.v2 => github.com/july2993/yaml v0.0.0-20200423062752-adcfa5abe2ed

require (
	github.com/AstroProfundis/sysinfo v0.0.0-20220902033416-231991f6df3c
	github.com/AstroProfundis/tabby v1.1.1-color
	github.com/BurntSushi/toml v1.2.0
	github.com/ScaleFT/sshkeys v0.0.0-20200327173127-6142f742bca5
	github.com/alecthomas/assert v1.0.0
	github.com/appleboy/easyssh-proxy v1.3.10-0.20211209134747-6671f69d85f5
	github.com/asaskevich/EventBus v0.0.0-20200907212545-49d423059eef
	github.com/cavaliergopher/grab/v3 v3.0.1
	github.com/cheggaaa/pb/v3 v3.1.0
	github.com/creasty/defaults v1.6.0
	github.com/docker/go-units v0.5.0
	github.com/fatih/color v1.13.0
	github.com/gibson042/canonicaljson-go v1.0.3
	github.com/go-sql-driver/mysql v1.6.0
	github.com/gofrs/flock v0.8.1
	github.com/gogo/protobuf v1.3.2
	github.com/golang/protobuf v1.5.2
	github.com/google/uuid v1.3.0
	github.com/gorilla/mux v1.8.0
	github.com/grpc-ecosystem/grpc-gateway v1.16.0
	github.com/jeremywohl/flatten v1.0.1
	github.com/joomcode/errorx v1.1.0
	github.com/juju/ansiterm v1.0.0
	github.com/mattn/go-runewidth v0.0.13
	github.com/otiai10/copy v1.7.0
	github.com/pingcap/check v0.0.0-20211026125417-57bd13f7b5f0
	github.com/pingcap/errors v0.11.5-0.20201126102027-b0a155152ca3
	github.com/pingcap/failpoint v0.0.0-20220801062533-2eaa32854a6c
	github.com/pingcap/fn v1.0.0
	github.com/pingcap/kvproto v0.0.0-20220913050750-f6d05706948a
	github.com/pingcap/tidb-insight/collector v0.0.0-20220902034607-fb5ae0ddc8c1
	github.com/pkg/errors v0.9.1
	github.com/prometheus/client_model v0.2.0
	github.com/prometheus/common v0.37.0
	github.com/prometheus/prom2json v1.3.1
	github.com/r3labs/diff/v2 v2.15.1
	github.com/relex/aini v1.5.0
	github.com/sergi/go-diff v1.2.0
	github.com/sethvargo/go-password v0.2.0
	github.com/shirou/gopsutil v3.21.11+incompatible
	github.com/spf13/cobra v1.5.0
	github.com/spf13/pflag v1.0.5
	github.com/stretchr/testify v1.8.0
	go.etcd.io/etcd/client/pkg/v3 v3.5.4
	go.etcd.io/etcd/client/v3 v3.5.4
	go.uber.org/atomic v1.10.0
	go.uber.org/zap v1.23.0
	golang.org/x/crypto v0.0.0-20220829220503-c86fa9a7ed90
	golang.org/x/mod v0.6.0-dev.0.20220419223038-86c51ed26bb4
	golang.org/x/sync v0.0.0-20220819030929-7fc1605a5dde
	golang.org/x/sys v0.0.0-20220829200755-d48e67d00261
	golang.org/x/term v0.0.0-20220722155259-a9ba230a4035
	golang.org/x/text v0.3.7
	google.golang.org/genproto v0.0.0-20220829175752-36a9c930ecbf
	google.golang.org/grpc v1.49.0
	gopkg.in/ini.v1 v1.67.0
	gopkg.in/yaml.v2 v2.4.0
	gopkg.in/yaml.v3 v3.0.1
	software.sslmate.com/src/go-pkcs12 v0.2.0
)

require (
	github.com/VividCortex/ewma v1.2.0 // indirect
	github.com/alecthomas/colour v0.1.0 // indirect
	github.com/alecthomas/repr v0.0.0-20210801044451-80ca428c5142 // indirect
	github.com/benbjohnson/clock v1.3.0 // indirect
	github.com/coreos/go-semver v0.3.0 // indirect
	github.com/coreos/go-systemd/v22 v22.3.2 // indirect
	github.com/davecgh/go-spew v1.1.1 // indirect
	github.com/dchest/bcrypt_pbkdf v0.0.0-20150205184540-83f37f9c154a // indirect
	github.com/go-ole/go-ole v1.2.6 // indirect
	github.com/google/shlex v0.0.0-20191202100458-e7afc7fbc510 // indirect
	github.com/inconshreveable/mousetrap v1.0.0 // indirect
	github.com/kr/pretty v0.3.0 // indirect
	github.com/lorenzosaino/go-sysctl v0.3.1 // indirect
	github.com/lunixbochs/vtclean v1.0.0 // indirect
	github.com/mattn/go-colorable v0.1.12 // indirect
	github.com/mattn/go-isatty v0.0.14 // indirect
	github.com/matttproud/golang_protobuf_extensions v1.0.1 // indirect
	github.com/pingcap/log v1.1.0 // indirect
	github.com/pmezard/go-difflib v1.0.0 // indirect
	github.com/rivo/uniseg v0.2.0 // indirect
	github.com/tklauser/go-sysconf v0.3.10 // indirect
	github.com/tklauser/numcpus v0.5.0 // indirect
	github.com/vishvananda/netlink v0.0.0-20210530105856-14e832ae1e8f // indirect
	github.com/vishvananda/netns v0.0.0-20200728191858-db3c7e526aae // indirect
	github.com/vmihailenco/msgpack v4.0.4+incompatible // indirect
	github.com/yusufpapurcu/wmi v1.2.2 // indirect
	go.etcd.io/etcd/api/v3 v3.5.4 // indirect
	go.uber.org/goleak v1.1.12 // indirect
	go.uber.org/multierr v1.8.0 // indirect
	golang.org/x/exp/typeparams v0.0.0-20220613132600-b0d781184e0d // indirect
	golang.org/x/lint v0.0.0-20210508222113-6edffad5e616 // indirect
	golang.org/x/net v0.0.0-20220722155237-a158d28d115b // indirect
	golang.org/x/tools v0.1.12 // indirect
	google.golang.org/appengine v1.6.7 // indirect
	google.golang.org/protobuf v1.28.1 // indirect
	gopkg.in/natefinch/lumberjack.v2 v2.0.0 // indirect
	honnef.co/go/tools v0.3.2 // indirect
)
