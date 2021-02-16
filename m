Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 88F6831C922
	for <lists+linux-man@lfdr.de>; Tue, 16 Feb 2021 11:55:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229807AbhBPKzV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 16 Feb 2021 05:55:21 -0500
Received: from mx01-sz.bfs.de ([194.94.69.67]:21640 "EHLO mx01-sz.bfs.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229830AbhBPKzM (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 16 Feb 2021 05:55:12 -0500
Received: from SRVEX01-SZ.bfs.intern (exchange-sz.bfs.de [10.129.90.31])
        by mx01-sz.bfs.de (Postfix) with ESMTPS id C2903204F0;
        Tue, 16 Feb 2021 11:54:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bfs.de; s=dkim201901;
        t=1613472869;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=2CNgRRwystQNQNZg915obIE0HkXzVhMpeZrNp5pnHms=;
        b=KiqvfnAcJQ+6rn+WBVgIA/e29fA6kQ2JVohBfasdVpht2OisvMQjviobnm4cHeTFubLpcF
        PnBm45ps7xdlXyn7eZsujm0bedio2nIXjzK8EdKljT97OLYbru5LRuQp6iQhhh7OqH3uHX
        BccRtyt4veMHAdlScL2xAOBTRDMh3ghpQVgybDX1nnAczNrfnIGlw/jvkp61xA+oDALDIL
        8ZB3QV63s8KmY6xXAHQ5j9nzQT6TXnLVlLbx5qUh2K/EzHZCFhVcyyqKxsOdV46VBkbNef
        Wuw5bN2fSqPgm0l83847cCD2v6YxzB+DYuRoQimh9GyZtxeLRBYNso7rpaVmzA==
Received: from SRVEX01-SZ.bfs.intern (10.129.90.31) by SRVEX01-SZ.bfs.intern
 (10.129.90.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2176.2; Tue, 16 Feb
 2021 11:54:29 +0100
Received: from SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a]) by
 SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a%13]) with mapi id
 15.01.2176.002; Tue, 16 Feb 2021 11:54:29 +0100
From:   Walter Harms <wharms@bfs.de>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>
CC:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: AW: [PATCH v3] scripts/bash_aliases: Add useful functions
Thread-Topic: [PATCH v3] scripts/bash_aliases: Add useful functions
Thread-Index: AQHXA9oUiz95O2+7M0+Cc1hjL9cSDKpam8G0
Date:   Tue, 16 Feb 2021 10:54:28 +0000
Message-ID: <6c936f8ac58747bc98a5c7dfe04b6405@bfs.de>
References: <20210215131522.450666-11-alx.manpages@gmail.com>,<20210215203249.580748-1-alx.manpages@gmail.com>
In-Reply-To: <20210215203249.580748-1-alx.manpages@gmail.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.137.16.39]
x-tm-as-product-ver: SMEX-14.0.0.3080-8.6.1012-25976.007
x-tm-as-result: No-10--2.464600-5.000000
x-tmase-matchedrid: Z2SjM+9tKjR02v7MbVCNbRvgzEPRJaDEKQNhMboqZloTiSW9r3PknJrJ
        z77RO+7jY41hcR3BAfyT6ZBVfNrBaMDpfv/1FZpJ3TmjMV8uaJmNY/pqxovzxTTPJxSCQcmM1t2
        9KLWKRj7xsFFIWbc6/k6zC0NWef6qnCTo6oGr4DPQfyKEYQc1R+PFF6ja2T3qV4i674aSi3xAHO
        g8qEtqyKkOAx94vw/eFiLwHjmepWTw3SIXhIR/5O06L72T4S3Ajjbg5KZCxUoIPuuOlevAytYDa
        bYIbUvB6W/6FOtZfVp/AaYicHwlVUYqoSlRbUK6naqtHOuEdapTZFSiiTjdnv67wpKrIJNBhmPN
        hzYtFr6DIPMnj8LpJdQTMO5G6F0o8mSY8pCopWWejeo11iW0N1Wt71aOqpDDyBXJN3+n78hDnGb
        7aBw28xxG52QJbCMatne2oshXpD0R3RjJbq0tuX3O3F/Nshx557BplDPz0BAN+F513KGyq8SnLQ
        NZDgjggeDkUeyG5+mmkoNgypcuDXdZMJpn3VD0Lyz9QvAyHjpgFto/VVnNJTLZyQk29Rf4rcqtn
        fSV7OrnzlXMYw4XMFlmYwhSwhAabdTuPa9VRGvEQdG7H66TyJ8TMnmE+d0ZiG3QlKGllDJE9DKI
        qIG6tQMGNcnYOzjlsUFHxo6+qx05OOpP7GREXU0fwjiZKc8TxDWEX46TkTM55XYgGM0mqlk/Dc5
        wUOBW5/e06ZNUVHJTKwhhBbtKVmr2hqxxFQgJNICbni1b6bxWXGvUUmKP2w==
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
x-tmase-result: 10--2.464600-5.000000
x-tmase-version: SMEX-14.0.0.3080-8.6.1012-25976.007
x-tm-snts-smtp: 8CA3D0EF00EC72F5DCABF6E9EE876E309555E7803E38C76324411FDC3EE2A98F2000:9
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Spam-Status: No, score=-3.00
X-Spamd-Result: default: False [-3.00 / 7.00];
         ARC_NA(0.00)[];
         TO_DN_EQ_ADDR_SOME(0.00)[];
         HAS_XOIP(0.00)[];
         FROM_HAS_DN(0.00)[];
         RCPT_COUNT_THREE(0.00)[3];
         FREEMAIL_ENVRCPT(0.00)[gmail.com];
         TO_MATCH_ENVRCPT_ALL(0.00)[];
         TAGGED_RCPT(0.00)[];
         MIME_GOOD(-0.10)[text/plain];
         TO_DN_SOME(0.00)[];
         DKIM_SIGNED(0.00)[bfs.de:s=dkim201901];
         NEURAL_HAM(-0.00)[-1.000];
         FREEMAIL_TO(0.00)[gmail.com];
         RCVD_NO_TLS_LAST(0.10)[];
         FROM_EQ_ENVFROM(0.00)[];
         MIME_TRACE(0.00)[0:+];
         RCVD_COUNT_TWO(0.00)[2];
         MID_RHS_MATCH_FROM(0.00)[];
         BAYES_HAM(-3.00)[100.00%]
Authentication-Results: mx01-sz.bfs.de;
        none
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

My version of grep (V3) has a -P option and claims to support pcre.
Maybe that is a replacement for pcregrep ?

Would reduce the dependencies by one.

re,
 wh

________________________________________
Von: Alejandro Colomar <alx.manpages@gmail.com>
Gesendet: Montag, 15. Februar 2021 21:32:50
An: mtk.manpages@gmail.com
Cc: Alejandro Colomar; linux-man@vger.kernel.org
Betreff: [PATCH v3] scripts/bash_aliases: Add useful functions

That file should be sourced (.) from 'bashrc' (or 'bash_aliases').

It contains functions that are useful for the maintenance of this
project.

- grep_syscall()
- grep_syscall_def()
- man_section()
- man_lsfunc()
- pdfman()
- grep_glibc_prototype()

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---

v2:
        - Reword license to adequate it for many functions instead
          of a single program.
        - Add a trailing ';' for consistency.
v3:
        - Resend to avoid confusion:  I forgot to use [PATCH v2]!

---
 scripts/bash_aliases | 171 +++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 171 insertions(+)
 create mode 100644 scripts/bash_aliases

diff --git a/scripts/bash_aliases b/scripts/bash_aliases
new file mode 100644
index 000000000..7bdadac43
--- /dev/null
+++ b/scripts/bash_aliases
@@ -0,0 +1,171 @@
+# SPDX-License-Identifier: GPL-2.0-only
+########################################################################
+#
+# (C) Copyright 2021, Alejandro Colomar
+# These functions are free software; you can redistribute them and/or
+# modify them under the terms of the GNU General Public License
+# as published by the Free Software Foundation; version 2.
+#
+# These functions are distributed in the hope that they will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+# GNU General Public License for more details
+# (http://www.gnu.org/licenses/gpl-2.0.html).
+#
+########################################################################
+
+########################################################################
+#      Exit status
+
+EX_OK=3D0;
+EX_USAGE=3D64;
+
+########################################################################
+#      Linux kernel
+
+#  grep_syscall()  finds the prototype of a syscall in the kernel sources,
+# printing the filename, line number, and the prototype.
+# It should be run from the root of the linux kernel source tree.
+# Usage example:  .../linux$ grep_syscall openat2;
+
+function grep_syscall()
+{
+       if ! [ -v 1 ]; then
+               >&2 echo "Usage: ${FUNCNAME[0]} <syscall>";
+               return ${EX_USAGE};
+       fi
+
+       find * -type f \
+       |grep '\.c$' \
+       |sort -V \
+       |xargs pcregrep -Mn "(?s)^\w*SYSCALL_DEFINE.\(${1},.*?\)" \
+       |sed -E 's/^[^:]+:[0-9]+:/&\n/';
+
+       find * -type f \
+       |grep '\.[ch]$' \
+       |sort -V \
+       |xargs pcregrep -Mn "(?s)^asmlinkage\s+[\w\s]+\**sys_${1}\s*\(.*?\)=
" \
+       |sed -E 's/^[^:]+:[0-9]+:/&\n/';
+}
+
+#  grep_syscall_def()  finds the definition of a syscall in the kernel sou=
rces,
+# printing the filename, line number, and the function definition.
+# It should be run from the root of the linux kernel source tree.
+# Usage example:  .../linux$ grep_syscall_def openat2;
+
+function grep_syscall_def()
+{
+       if ! [ -v 1 ]; then
+               >&2 echo "Usage: ${FUNCNAME[0]} <syscall>";
+               return ${EX_USAGE};
+       fi
+
+       find * -type f \
+       |grep '\.c$' \
+       |sort -V \
+       |xargs pcregrep -Mn "(?s)^\w*SYSCALL_DEFINE.\(${1},.*?^}" \
+       |sed -E 's/^[^:]+:[0-9]+:/&\n/';
+}
+
+########################################################################
+#      Linux man-pages
+
+#  man_section()  prints a specific manual page section (DESCRIPTION, SYNO=
PSIS,
+# ...) of all manual pages in a directory (or in a single manual page file=
).
+# Usage example:  .../man-pages$ man_section man2 SYNOPSIS;
+
+function man_section()
+{
+       if ! [ -v 2 ]; then
+               >&2 echo "Usage: ${FUNCNAME[0]} <dir> <section>";
+               return ${EX_USAGE};
+       fi
+
+       find "${1}" -type f \
+       |xargs grep -l "\.SH ${2}" \
+       |sort -V \
+       |while read -r manpage; do
+               <${manpage} \
+               sed -n \
+                       -e '/^\.TH/,/^\.SH/{/^\.SH/!p}' \
+                       -e "/^\.SH ${2}/p" \
+                       -e "/^\.SH ${2}/,/^\.SH/{/^\.SH/!p}" \
+               |man -P cat -l - 2>/dev/null;
+       done;
+}
+
+#  man_lsfunc()  prints the name of all C functions declared in the SYNOPS=
IS
+# of all manual pages in a directory (or in a single manual page file).
+# Each name is printed in a separate line
+# Usage example:  .../man-pages$ man_lsfunc man2;
+
+function man_lsfunc()
+{
+       if ! [ -v 1 ]; then
+               >&2 echo "Usage: ${FUNCNAME[0]} <dir>";
+               return ${EX_USAGE};
+       fi
+
+       find "${1}" -type f \
+       |xargs grep -l "\.SH SYNOPSIS" \
+       |sort -V \
+       |while read -r manpage; do
+               <${manpage} \
+               sed -n \
+                       -e '/^\.TH/,/^\.SH/{/^\.SH/!p}' \
+                       -e "/^\.SH SYNOPSIS/p" \
+                       -e "/^\.SH SYNOPSIS/,/^\.SH/{/^\.SH/!p}" \
+               |sed \
+                       -e '/Feature/,$d' \
+                       -e '/{/,/}/d' \
+               |man -P cat -l - 2>/dev/null;
+       done \
+       |sed -n "/^SYNOPSIS/,/^\w/p" \
+       |grep '^       \w' \
+       |grep -v ':' \
+       |sed 's/^[^(]* \**\(\w*\)(.*/\1/' \
+       |grep '^\w' \
+       |uniq;
+}
+
+#  pdfman()  reanders a manual page in PDF
+# Usage example:  .../man-pages$ pdfman man2/membarrier.2;
+
+function pdfman()
+{
+       if ! [ -v 1 ]; then
+               >&2 echo "Usage: ${FUNCNAME[0]} <man-page.n>";
+               return ${EX_USAGE};
+       fi;
+
+       local tmp=3D"$(mktemp -t "${1##*/}.XXXXXX")";
+
+       <${1} \
+       man -Tps -l - \
+       |ps2pdf - - \
+       >${tmp};
+       xdg-open ${tmp};
+}
+
+########################################################################
+#      Glibc
+
+#  grep_glibc_prototype()  finds a function prototype in the glibc sources=
,
+# printing the filename, line number, and the prototype.
+# It should be run from the root of the glibc source tree.
+# Usage example:  .../glibc$ grep_glibc_prototype printf;
+
+function grep_glibc_prototype()
+{
+       if ! [ -v 1 ]; then
+               >&2 echo "Usage: ${FUNCNAME[0]} <func>";
+               return ${EX_USAGE};
+       fi
+
+       find * -type f \
+       |grep '\.h$' \
+       |sort -V \
+       |xargs pcregrep -Mn \
+         "(?s)^[^\s#][\w\s]+\s+\**${1}\s*\([\w\s()[\]*,]*?(...)?\)[\w\s()]=
*;" \
+       |sed -E 's/^[^:]+:[0-9]+:/&\n/';
+}
--
2.30.0

