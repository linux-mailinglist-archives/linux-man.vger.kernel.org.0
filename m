Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E865619BDB5
	for <lists+linux-man@lfdr.de>; Thu,  2 Apr 2020 10:42:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728612AbgDBImN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 2 Apr 2020 04:42:13 -0400
Received: from mga06.intel.com ([134.134.136.31]:24514 "EHLO mga06.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727012AbgDBImN (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 2 Apr 2020 04:42:13 -0400
IronPort-SDR: 5NdlwPSu9hj6lR7T4Z4cmAPorxx6fB6izeCApxVf18NOqtHKBEI/m4t7zBcZNsgMQKRi2AFuZu
 HifPBOpvmECg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Apr 2020 01:42:11 -0700
IronPort-SDR: idLkncQMM9DfhaVwI6TWXbjpEmchxwkq5KMGR5c238PAn2Z5uljaFyP6UJmtjcSK2tSB5AKSWT
 Gx6wH8BSpSoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,335,1580803200"; 
   d="scan'208";a="423050137"
Received: from linux.intel.com ([10.54.29.200])
  by orsmga005.jf.intel.com with ESMTP; 02 Apr 2020 01:42:11 -0700
Received: from [10.249.226.252] (abudanko-mobl.ccr.corp.intel.com [10.249.226.252])
        by linux.intel.com (Postfix) with ESMTP id 244F0580781;
        Thu,  2 Apr 2020 01:42:06 -0700 (PDT)
From:   Alexey Budankov <alexey.budankov@linux.intel.com>
Organization: Intel Corp.
To:     Peter Zijlstra <peterz@infradead.org>,
        Arnaldo Carvalho de Melo <acme@kernel.org>,
        Alexei Starovoitov <ast@kernel.org>,
        Ingo Molnar <mingo@redhat.com>,
        James Morris <jmorris@namei.org>,
        Namhyung Kim <namhyung@kernel.org>
Cc:     Serge Hallyn <serge@hallyn.com>, Jiri Olsa <jolsa@redhat.com>,
        Song Liu <songliubraving@fb.com>,
        Andi Kleen <ak@linux.intel.com>,
        Stephane Eranian <eranian@google.com>,
        Igor Lubashev <ilubashe@akamai.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        "linux-security-module@vger.kernel.org" 
        <linux-security-module@vger.kernel.org>,
        "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
        "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
        "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
        linux-man@vger.kernel.org
Subject: [PATCH v8 00/12] Introduce CAP_PERFMON to secure system performance
 monitoring and observability
Message-ID: <f96f8f8a-e65c-3f36-dc85-fc3f5191e8c5@linux.intel.com>
Date:   Thu, 2 Apr 2020 11:42:05 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


Changes in v8:
- added Acked-by and Reviewed-by tags acquired so far
- rebased on the top of tip perf/core repository:
  git://git.kernel.org/pub/scm/linux/kernel/git/tip/tip perf/core
  sha1: 629b3df7ecb01fddfdf71cb5d3c563d143117c33
Changes in v7:
- updated and extended kernel.rst and perf-security.rst documentation 
  files with the information about CAP_PERFMON capability and its use cases
- documented the case of double audit logging of CAP_PERFMON and CAP_SYS_ADMIN
  capabilities on a SELinux enabled system
Changes in v6:
- avoided noaudit checks in perfmon_capable() to explicitly advertise
  CAP_PERFMON usage thru audit logs to secure system performance
  monitoring and observability
Changes in v5:
- renamed CAP_SYS_PERFMON to CAP_PERFMON
- extended perfmon_capable() with noaudit checks
Changes in v4:
- converted perfmon_capable() into an inline function
- made perf_events kprobes, uprobes, hw breakpoints and namespaces data
  available to CAP_SYS_PERFMON privileged processes
- applied perfmon_capable() to drivers/perf and drivers/oprofile
- extended __cmd_ftrace() with support of CAP_SYS_PERFMON
Changes in v3:
- implemented perfmon_capable() macros aggregating required capabilities
  checks
Changes in v2:
- made perf_events trace points available to CAP_SYS_PERFMON privileged
  processes
- made perf_event_paranoid_check() treat CAP_SYS_PERFMON equally to
  CAP_SYS_ADMIN
- applied CAP_SYS_PERFMON to i915_perf, bpf_trace, powerpc and parisc
  system performance monitoring and observability related subsystems

Currently access to perf_events, i915_perf and other performance
monitoring and observability subsystems of the kernel is open only for
a privileged process [1] with CAP_SYS_ADMIN capability enabled in the
process effective set [2].

This patch set introduces CAP_PERFMON capability designed to secure
system performance monitoring and observability operations so that
CAP_PERFMON would assist CAP_SYS_ADMIN capability in its governing role
for performance monitoring and observability subsystems of the kernel.

CAP_PERFMON intends to harden system security and integrity during
performance monitoring and observability operations by decreasing attack
surface that is available to a CAP_SYS_ADMIN privileged process [2].
Providing the access to performance monitoring and observability
operations under CAP_PERFMON capability singly, without the rest of
CAP_SYS_ADMIN credentials, excludes chances to misuse the credentials
and makes the operation more secure. Thus, CAP_PERFMON implements the
principal of least privilege for performance monitoring and
observability operations (POSIX IEEE 1003.1e: 2.2.2.39 principle of
least privilege: A security design principle that states that a process
or program be granted only those privileges (e.g., capabilities)
necessary to accomplish its legitimate function, and only for the time
that such privileges are actually required)

CAP_PERFMON intends to meet the demand to secure system performance
monitoring and observability operations for adoption in security
sensitive, restricted, multiuser production environments (e.g. HPC
clusters, cloud and virtual compute environments), where root or
CAP_SYS_ADMIN credentials are not available to mass users of a system,
and securely unblock accessibility of system performance monitoring and
observability operations beyond root and CAP_SYS_ADMIN use cases.

CAP_PERFMON intends to take over CAP_SYS_ADMIN credentials related to
system performance monitoring and observability operations and balance
amount of CAP_SYS_ADMIN credentials following the recommendations in
the capabilities man page [2] for CAP_SYS_ADMIN: "Note: this capability
is overloaded; see Notes to kernel developers, below." For backward
compatibility reasons access to system performance monitoring and
observability subsystems of the kernel remains open for CAP_SYS_ADMIN
privileged processes but CAP_SYS_ADMIN capability usage for secure
system performance monitoring and observability operations is
discouraged with respect to the designed CAP_PERFMON capability.

Possible alternative solution to this system security hardening,
capabilities balancing task of making performance monitoring and
observability operations more secure and accessible could be to use
the existing CAP_SYS_PTRACE capability to govern system performance
monitoring and observability subsystems. However CAP_SYS_PTRACE
capability still provides users with more credentials than are
required for secure performance monitoring and observability
operations and this excess is avoided by the designed CAP_PERFMON.

Although software running under CAP_PERFMON can not ensure avoidance of
related hardware issues, the software can still mitigate those issues
following the official hardware issues mitigation procedure [3]. The
bugs in the software itself can be fixed following the standard kernel
development process [4] to maintain and harden security of system
performance monitoring and observability operations. Finally, the patch
set is shaped in the way that simplifies backtracking procedure of
possible induced issues [5] as much as possible.

---
Alexey Budankov (12):
  capabilities: introduce CAP_PERFMON to kernel and user space
  perf/core: open access to the core for CAP_PERFMON privileged process
  perf/core: open access to probes for CAP_PERFMON privileged process
  perf tool: extend Perf tool with CAP_PERFMON capability support
  drm/i915/perf: open access for CAP_PERFMON privileged process
  trace/bpf_trace: open access for CAP_PERFMON privileged process
  powerpc/perf: open access for CAP_PERFMON privileged process
  parisc/perf: open access for CAP_PERFMON privileged process
  drivers/perf: open access for CAP_PERFMON privileged process
  drivers/oprofile: open access for CAP_PERFMON privileged process
  doc/admin-guide: update perf-security.rst with CAP_PERFMON information
  doc/admin-guide: update kernel.rst with CAP_PERFMON information

 Documentation/admin-guide/perf-security.rst | 65 +++++++++++++--------
 Documentation/admin-guide/sysctl/kernel.rst | 16 +++--
 arch/parisc/kernel/perf.c                   |  2 +-
 arch/powerpc/perf/imc-pmu.c                 |  4 +-
 drivers/gpu/drm/i915/i915_perf.c            | 13 ++---
 drivers/oprofile/event_buffer.c             |  2 +-
 drivers/perf/arm_spe_pmu.c                  |  4 +-
 include/linux/capability.h                  |  4 ++
 include/linux/perf_event.h                  |  6 +-
 include/uapi/linux/capability.h             |  8 ++-
 kernel/events/core.c                        |  6 +-
 kernel/trace/bpf_trace.c                    |  2 +-
 security/selinux/include/classmap.h         |  4 +-
 tools/perf/builtin-ftrace.c                 |  5 +-
 tools/perf/design.txt                       |  3 +-
 tools/perf/util/cap.h                       |  4 ++
 tools/perf/util/evsel.c                     | 10 ++--
 tools/perf/util/util.c                      |  1 +
 18 files changed, 98 insertions(+), 61 deletions(-)

---
Validation (Intel Skylake, 8 cores, Fedora 29, 5.5.0-rc3+, x86_64):

libcap library [6], [7], [8] and Perf tool can be used to apply
CAP_PERFMON capability for secure system performance monitoring and
observability beyond the scope permitted by the system wide
perf_event_paranoid kernel setting [9] and below are the steps for
evaluation:

  - patch, build and boot the kernel
  - patch, build Perf tool e.g. to /home/user/perf
  ...
  # git clone git://git.kernel.org/pub/scm/libs/libcap/libcap.git libcap
  # pushd libcap
  # patch libcap/include/uapi/linux/capabilities.h with [PATCH 1]
  # make
  # pushd progs
  # ./setcap "cap_perfmon,cap_sys_ptrace,cap_syslog=ep" /home/user/perf
  # ./setcap -v "cap_perfmon,cap_sys_ptrace,cap_syslog=ep" /home/user/perf
  /home/user/perf: OK
  # ./getcap /home/user/perf
  /home/user/perf = cap_sys_ptrace,cap_syslog,cap_perfmon+ep
  # echo 2 > /proc/sys/kernel/perf_event_paranoid
  # cat /proc/sys/kernel/perf_event_paranoid 
  2
  ...
  $ /home/user/perf top
    ... works as expected ...
  $ cat /proc/`pidof perf`/status
  Name:	perf
  Umask:	0002
  State:	S (sleeping)
  Tgid:	2958
  Ngid:	0
  Pid:	2958
  PPid:	9847
  TracerPid:	0
  Uid:	500	500	500	500
  Gid:	500	500	500	500
  FDSize:	256
  ...
  CapInh:	0000000000000000
  CapPrm:	0000004400080000
  CapEff:	0000004400080000 => 01000100 00000000 00001000 00000000 00000000
                                     cap_perfmon,cap_sys_ptrace,cap_syslog
  CapBnd:	0000007fffffffff
  CapAmb:	0000000000000000
  NoNewPrivs:	0
  Seccomp:	0
  Speculation_Store_Bypass:	thread vulnerable
  Cpus_allowed:	ff
  Cpus_allowed_list:	0-7
  ...

Usage of cap_perfmon effectively avoids unused credentials excess:

- with cap_sys_admin:
  CapEff:	0000007fffffffff => 01111111 11111111 11111111 11111111 11111111

- with cap_perfmon:
  CapEff:	0000004400080000 => 01000100 00000000 00001000 00000000 00000000
                                    38   34               19
                               perfmon   syslog           sys_ptrace

---
[1] https://www.kernel.org/doc/html/latest/admin-guide/perf-security.html
[2] http://man7.org/linux/man-pages/man7/capabilities.7.html
[3] https://www.kernel.org/doc/html/latest/process/embargoed-hardware-issues.html
[4] https://www.kernel.org/doc/html/latest/admin-guide/security-bugs.html
[5] https://www.kernel.org/doc/html/latest/process/management-style.html#decisions
[6] http://man7.org/linux/man-pages/man8/setcap.8.html
[7] https://git.kernel.org/pub/scm/libs/libcap/libcap.git
[8] https://sites.google.com/site/fullycapable/, posix_1003.1e-990310.pdf
[9] http://man7.org/linux/man-pages/man2/perf_event_open.2.html
