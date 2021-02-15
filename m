Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E7EEE31BA3F
	for <lists+linux-man@lfdr.de>; Mon, 15 Feb 2021 14:24:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230364AbhBONXW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 15 Feb 2021 08:23:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39514 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230357AbhBONXV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 15 Feb 2021 08:23:21 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D5B23C061756
        for <linux-man@vger.kernel.org>; Mon, 15 Feb 2021 05:22:38 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id z63so4031904wmg.4
        for <linux-man@vger.kernel.org>; Mon, 15 Feb 2021 05:22:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=RFRTOz4KRtHPZ6jcQPsOyJ9s2aCKcc5cKhHSDYaGliA=;
        b=jDvjyua0gtHC6we7qaA6i40KLVTtacjfPCtZPWwcCBBk8Xdx6qxdi3Yb5AQ8JJHsmP
         9JH9LD9Y22T5feOXbL/DVJc5oS3qGPpRM/Dg8Y+cgEQZjH+3fBam9RPvig9E2AmhwYIp
         ALqCXitqsTas1Ac26/bgq6DIe2i7xvBhe4Yg7fgDB/vWmthgaFZNCNdO7IxDKYEpQvBj
         X4Bp4I3myjyFzPWGvWJa7MpwqELQAa5fqsaV3u0HyyjYD+Q9oloC1v4ih/XoIGisTJkh
         ND+9X7dHMYV0WevyXVjsqH/VuSiFUMSfTZq2DW90aG2da0dMCMgrcguE7zHoT3YtUqTn
         Khew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=RFRTOz4KRtHPZ6jcQPsOyJ9s2aCKcc5cKhHSDYaGliA=;
        b=BcirmadEDZ496h7wUBer9CCzZCgQvLg1N9N6xm71t29Jnm0SUuzRBQsutUOCAPFT0N
         z9gCyjarYw01qen9XRcl7z8ixOSYTxEL082kWzfVcxb8T2FOCLk+ddWbTe/Yikk3zD5X
         5ErjclRa/x9+JT5d5TNGSOenInUXoESjiCD+k21E+fUPVK8qCWPKV4mwGna1vHrBozit
         +8ONeFJtq86J/3ele/xre9uSRP3dALP9LPIqboQnbPrLxObusyUmDMIH04ycbNOZxil5
         u+2mSLhyOd62ZztmIYZBxnO7t/Wp+4nJUf1pGjbe+eNvl2CtT2EPUxXhWj4/MpjbYebE
         JqwQ==
X-Gm-Message-State: AOAM531tbD0M1uoMTra/RlHXnTdq9teHvNjltiYERcDHxH9FTNe6dB4I
        YNBuEsd2ZxP75T+N0m+pVb8=
X-Google-Smtp-Source: ABdhPJzh26bOu6t30LM4UmENpBCPhV6yP4NxTvrd4Sk5v5Hetkon40RVUS+KF8JpC1XeVQz6QSYJzQ==
X-Received: by 2002:a1c:7e85:: with SMTP id z127mr14409622wmc.131.1613395357641;
        Mon, 15 Feb 2021 05:22:37 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id d15sm19309504wru.80.2021.02.15.05.22.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Feb 2021 05:22:37 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] scripts/bash_aliases: Add useful functions
Date:   Mon, 15 Feb 2021 14:15:30 +0100
Message-Id: <20210215131522.450666-11-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

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
 scripts/bash_aliases | 172 +++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 172 insertions(+)
 create mode 100644 scripts/bash_aliases

diff --git a/scripts/bash_aliases b/scripts/bash_aliases
new file mode 100644
index 000000000..4fcd66e62
--- /dev/null
+++ b/scripts/bash_aliases
@@ -0,0 +1,172 @@
+# SPDX-License-Identifier: GPL-2.0-only
+########################################################################
+#
+# (C) Copyright 2021, Alejandro Colomar
+# This program is free software; you can redistribute it and/or
+# modify it under the terms of the GNU General Public License
+# as published by the Free Software Foundation; version 2.
+#
+# This program is distributed in the hope that it will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+# GNU General Public License for more details
+# (http://www.gnu.org/licenses/gpl-2.0.html).
+#
+########################################################################
+
+########################################################################
+#	Exit status
+
+EX_OK=0;
+EX_USAGE=64;
+
+########################################################################
+#	Linux kernel
+
+#  grep_syscall()  finds the prototype of a syscall in the kernel sources,
+# printing the filename, line number, and the prototype.
+# It should be run from the root of the linux kernel source tree.
+# Usage example:  .../linux$ grep_syscall openat2;
+
+function grep_syscall()
+{
+	if ! [ -v 1 ]; then
+		>&2 echo "Usage: ${FUNCNAME[0]} <syscall>";
+		return ${EX_USAGE};
+	fi
+
+	find * -type f \
+	|grep '\.c$' \
+	|sort -V \
+	|xargs pcregrep -Mn "(?s)^\w*SYSCALL_DEFINE.\(${1},.*?\)" \
+	|sed -E 's/^[^:]+:[0-9]+:/&\n/';
+
+	find * -type f \
+	|grep '\.[ch]$' \
+	|sort -V \
+	|xargs pcregrep -Mn "(?s)^asmlinkage\s+[\w\s]+\**sys_${1}\s*\(.*?\)" \
+	|sed -E 's/^[^:]+:[0-9]+:/&\n/';
+}
+
+#  grep_syscall_def()  finds the definition of a syscall in the kernel sources,
+# printing the filename, line number, and the function definition.
+# It should be run from the root of the linux kernel source tree.
+# Usage example:  .../linux$ grep_syscall_def openat2;
+
+function grep_syscall_def()
+{
+	if ! [ -v 1 ]; then
+		>&2 echo "Usage: ${FUNCNAME[0]} <syscall>";
+		return ${EX_USAGE};
+	fi
+
+	find * -type f \
+	|grep '\.c$' \
+	|sort -V \
+	|xargs pcregrep -Mn "(?s)^\w*SYSCALL_DEFINE.\(${1},.*?^}" \
+	|sed -E 's/^[^:]+:[0-9]+:/&\n/';
+}
+
+########################################################################
+#	Linux man-pages
+
+#  man_section()  prints a specific manual page section (DESCRIPTION, SYNOPSIS,
+# ...) of all manual pages in a directory (or in a single manual page file).
+# Usage example:  .../man-pages$ man_section man2 SYNOPSIS;
+
+function man_section()
+{
+	if ! [ -v 2 ]; then
+		>&2 echo "Usage: ${FUNCNAME[0]} <dir> <section>";
+		return ${EX_USAGE};
+	fi
+
+	find "${1}" -type f \
+	|xargs grep -l "\.SH ${2}" \
+	|sort -V \
+	|while read -r manpage; do
+		<${manpage} \
+		sed -n \
+			-e '/^\.TH/,/^\.SH/{/^\.SH/!p}' \
+			-e "/^\.SH ${2}/p" \
+			-e "/^\.SH ${2}/,/^\.SH/{/^\.SH/!p}" \
+		|man -P cat -l - 2>/dev/null;
+	done;
+}
+
+#  man_lsfunc()  prints the name of all C functions declared in the SYNOPSIS
+# of all manual pages in a directory (or in a single manual page file).
+# Each name is printed in a separate line
+# Usage example:  .../man-pages$ man_lsfunc man2;
+
+function man_lsfunc()
+{
+	if ! [ -v 1 ]; then
+		>&2 echo "Usage: ${FUNCNAME[0]} <dir>";
+		return ${EX_USAGE};
+	fi
+
+	find "${1}" -type f \
+	|xargs grep -l "\.SH SYNOPSIS" \
+	|sort -V \
+	|while read -r manpage; do
+		<${manpage} \
+		sed -n \
+			-e '/^\.TH/,/^\.SH/{/^\.SH/!p}' \
+			-e "/^\.SH SYNOPSIS/p" \
+			-e "/^\.SH SYNOPSIS/,/^\.SH/{/^\.SH/!p}" \
+		|sed \
+			-e '/Feature/,$d' \
+			-e '/{/,/}/d' \
+		|man -P cat -l - 2>/dev/null;
+	done \
+	|sed -n "/^SYNOPSIS/,/^\w/p" \
+	|grep '^       \w' \
+	|grep -v ':' \
+	|sed 's/^[^(]* \**\(\w*\)(.*/\1/' \
+	|grep '^\w' \
+	|uniq;
+}
+
+#  pdfman()  reanders a manual page in PDF
+# Usage example:  .../man-pages$ pdfman man2/membarrier.2
+
+function pdfman()
+{
+	if ! [ -v 1 ]; then
+		>&2 echo "Usage: ${FUNCNAME[0]} <man-page.n>";
+		return ${EX_USAGE};
+	fi;
+
+	local tmp="$(mktemp -t "${1##*/}.XXXXXX")";
+
+	<${1} \
+	man -Tps -l - \
+	|ps2pdf - - \
+	>${tmp};
+	xdg-open ${tmp};
+}
+
+########################################################################
+#	Glibc
+
+#  grep_glibc_prototype()  finds a function prototype in the glibc sources,
+# printing the filename, line number, and the prototype.
+# It should be run from the root of the glibc source tree.
+# Usage example:  .../glibc$ grep_glibc_prototype printf;
+
+function grep_glibc_prototype()
+{
+	if ! [ -v 1 ]; then
+		>&2 echo "Usage: ${FUNCNAME[0]} <func>";
+		return ${EX_USAGE};
+	fi
+
+	find * -type f \
+	|grep '\.h$' \
+	|sort -V \
+	|xargs pcregrep -Mn \
+	  "(?s)^[^\s#][\w\s]+\s+\**${1}\s*\([\w\s()[\]*,]*?(...)?\)[\w\s()]*;" \
+	|sed -E 's/^[^:]+:[0-9]+:/&\n/';
+}
+
-- 
2.30.0

