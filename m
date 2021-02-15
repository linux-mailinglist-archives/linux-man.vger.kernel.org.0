Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6629231C311
	for <lists+linux-man@lfdr.de>; Mon, 15 Feb 2021 21:35:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229469AbhBOUet (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 15 Feb 2021 15:34:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47318 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229617AbhBOUeq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 15 Feb 2021 15:34:46 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 50224C061574
        for <linux-man@vger.kernel.org>; Mon, 15 Feb 2021 12:34:06 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id h67so5679749wmh.1
        for <linux-man@vger.kernel.org>; Mon, 15 Feb 2021 12:34:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=MZFbfiTxg+Q9QitBTGRI0g2UFYfk+G/9Htal8URD9pQ=;
        b=fc1gLfuYsIPIghr7KJU9yDxxwUCVxCJW1imKRnXliwdLkI3gExhUSD4TVSkNLp1ApF
         m2zecLlzToZj6M7TgGDTrDzBPDqI2GVMDrD/o4kDZDIPRRI7ODhYslTzD8ybnVe9Ld8B
         hotxw50ZHoWtAJK2/bG1n4aOa9i//E8bbFsaTa9RTwUC1ok4IV1riqn0ZsRegdFMZ+Q5
         gggAJJKw0tHXBPxahoNFzVhHAKrqwcp9dw9NKULZGQojXj5a8QRvFp0I6a3Uw/XlFFfb
         o8Dp0YqWS+sSWJlMLbTpLoN/L9sNU8oTOrW4XP8nYx5EkU/bSmbLbq2Ga8u9X7tsg1CV
         Yr8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=MZFbfiTxg+Q9QitBTGRI0g2UFYfk+G/9Htal8URD9pQ=;
        b=Ub7OjfKGm8niwCvsXkZBx/gScOOk40CY/aOnFKDtMH1S21gdtD8TjV7n0xARhFIbMv
         VaJ98bSyLTJ6NWCxEbtY4cTpPCtnZMWe/fDzD+JBZDQ3I50MDef7n3v9DorQAcisoUri
         g7n4B9i1+L44p13lw/O4J4xMoYO9kubQK0+R0cJUcF3qom8IptabtxQIDFBp+5OOe/N/
         rzvUzbQPgGavu416lEyeJuZCJJ/dzWmsS5pY1vJ3bxDPL1IAyALU/vebNU4Q73d2UOdm
         c2Z9DJlQIUoW/5Hzu7MpHqGbMXJjaiy3f+2TUM9o3QJCTuVxLJPU8BADfcSBUuOsX6IY
         2LaQ==
X-Gm-Message-State: AOAM531XjF6xactqY3BuMfp39VeaXXkFTJyITGRIj+9n6wdGZfoS2he2
        DBMtPjnmbUlxRV1znxmQTkl+5UlInTY=
X-Google-Smtp-Source: ABdhPJyEyk7YhIJ7z3pZadyRnCF04heUW1/QMOVfmVCoBNqpP3sjy6gpNK5qKSYwPXU9vSenWp9s1g==
X-Received: by 2002:a05:600c:2d44:: with SMTP id a4mr480202wmg.95.1613421245042;
        Mon, 15 Feb 2021 12:34:05 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id g15sm25403065wrx.1.2021.02.15.12.34.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Feb 2021 12:34:04 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH v3] scripts/bash_aliases: Add useful functions
Date:   Mon, 15 Feb 2021 21:32:50 +0100
Message-Id: <20210215203249.580748-1-alx.manpages@gmail.com>
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

