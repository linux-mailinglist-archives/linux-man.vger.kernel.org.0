Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ED01B31C308
	for <lists+linux-man@lfdr.de>; Mon, 15 Feb 2021 21:33:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229520AbhBOUdZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 15 Feb 2021 15:33:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46994 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229469AbhBOUdQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 15 Feb 2021 15:33:16 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E9283C0613D6
        for <linux-man@vger.kernel.org>; Mon, 15 Feb 2021 12:32:35 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id t15so10469005wrx.13
        for <linux-man@vger.kernel.org>; Mon, 15 Feb 2021 12:32:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=YUaSxi+WW1gnLsv8mO6Al+HvAe1CtbL3gATu4buO5vQ=;
        b=T+ywPJaKBbgEotDEuF0vqEqwqn/Z9nc/OPOhgpHIleasLhfF81Bwt05+TCTj+uSuGL
         Mzv5xMXybAt5RgUshrnmAWGJm6xHHQneLeeCjxwpto7dMakTjB4Jnpw5AsjCXFEsqj+a
         SRvbPcJGxBadBKKxeNfUqq5XbRlhsqTMVc1pT+Yc/bl9rGYb0oXFn/gtmQM0KbgId8yH
         UiaEjQIOngGHDifw4hTfJapbn0m3miXyq3vvbMoFAbyrqa6VjWgHiDaSM1EBur+76T9g
         lp0Rgq/g/Hqd2WL8+0+/y/xH1J1AvN49K8XbIcxqEW8N7ZHlTe9eFBcd+ZkF7OUPA9Zt
         4N8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=YUaSxi+WW1gnLsv8mO6Al+HvAe1CtbL3gATu4buO5vQ=;
        b=FfsdD4YGBErhFo8J0ymjM3xJ4Aj+2B5Lr66vizIO4poX1ZFUDkrGDzJHRraTE/mfNo
         K6N18Cim1YaYRWru/Dk290MmSTHFoO0wem/z4UjGhTwyY3Q6/h9euVszBJAKkd3RFZou
         w5rsENtOPcDWMBGGl682w7G3o05bTsoPxp+5K8xD99xNcA/nDnWrfj2eXh2EXgn0ctvp
         N09t84lAGI5PLRBjSukRrAy49/qXLzyxGP5jcMMLMmY/Qg98p6ne6SxpKoYWrJDtzWvN
         r0/ZJMzPUuqOz/0OhJGaUDNvsrDZ1YEX+0ZFZlsK71cQbdIDmA1xoVxbBjYjqFaP9R3d
         gEmg==
X-Gm-Message-State: AOAM530JCu5JPuonxSwsnKvudqfa2UpY1tAKIg1Ln2jNkTjNI/F/obnt
        UP4LnslxcLdQ7JKqBv6//GT54lO7Hsw=
X-Google-Smtp-Source: ABdhPJyKm0+qQ7vqY16kVSX+5SYhN8yF/yLANQ9vJKUJd7SCjCTytCg+IVR7FwnbopoRCM0AUg3rAg==
X-Received: by 2002:a5d:4582:: with SMTP id p2mr19943448wrq.126.1613421154704;
        Mon, 15 Feb 2021 12:32:34 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id g62sm461305wmf.46.2021.02.15.12.32.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Feb 2021 12:32:34 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] scripts/bash_aliases: Add useful functions
Date:   Mon, 15 Feb 2021 21:31:24 +0100
Message-Id: <20210215203123.580680-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210215131522.450666-11-alx.manpages@gmail.com>
References: <20210215131522.450666-11-alx.manpages@gmail.com>
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

v2:
	- Reword license to adequate it for many functions instead
	  of a single program.
	- Add a trailing ';' for consistency.

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
+# Usage example:  .../man-pages$ pdfman man2/membarrier.2;
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
-- 
2.30.0

