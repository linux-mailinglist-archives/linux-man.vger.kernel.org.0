Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1858F31F05A
	for <lists+linux-man@lfdr.de>; Thu, 18 Feb 2021 20:51:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232376AbhBRTqi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 18 Feb 2021 14:46:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55410 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230283AbhBRTg0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 18 Feb 2021 14:36:26 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C73FBC0617A9
        for <linux-man@vger.kernel.org>; Thu, 18 Feb 2021 11:35:11 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id o15so4742561wmq.5
        for <linux-man@vger.kernel.org>; Thu, 18 Feb 2021 11:35:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=lEPqNMwXz5h06Hkhdt69fNnL7IRJIvj3C4kfUxlVvUs=;
        b=Ibv+p932sBM3yAixYh45wlVtjo/tmf4jINdSEL4feXoKcdbAxO5D8if6YZezPEp9wk
         Xwb9g8gI0FKHyGlfSUgqiav3QJMLS/724ty4oQMWax0J03vnUCb7XCSHKzSjSYwVLAGD
         M/IMcL8eCfEaywajjZ9nFatl5ZOGacjV7Kqf4H9y+FLyCa/ebCsOuow5BmdpWqDxcAz+
         6q8WvYLA1I0c3hz74ZO1kV+4FnYkp75I6lwbP/+RcpOBNHInOsoTxmPObltdfnWEew2B
         7dkQzfNIyh6whuaMTv+IaqVuhXx+btAIGnAsSZFmnzcQA8JZzAcYfcJpYUJBOExnhVHA
         kEHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lEPqNMwXz5h06Hkhdt69fNnL7IRJIvj3C4kfUxlVvUs=;
        b=hK6s+MqBa3RK8gxupKMXZVMxQ22mAi0olhjGoQPYrm6HyNtxuY7D4Wk6iuTibdaFvw
         EMLjY/S4VtkaFWcKVAKZhQZt3+QCRhKp+VK7MTWzwUjy48wni/C+1t2b1EmF89PZIFjU
         DfhcbbCnj5Q3DMQ4Ic1QRrmgWFTN1a8J0nQuOqX/mAmADLU9n2nrHsK4l/f3iIVrfxN2
         /ZdWA4MB+XGiFaihK4dfuuwDxbdKicXq3GGnNVivY/HzXeuZ74NHkcg1bOBznzNDJSge
         MtdpfJeobZAEIyBf2zftPMWMM859uw4G2vt4LRG+dS5GWpl7AoBV2I0lMCdOswTnjBdH
         DTnQ==
X-Gm-Message-State: AOAM531jmY9eK4xl6msoNG88ZlGZD7WyBiltEO5thhNIEX6dvSzcLYw+
        DhNDorZEYqnpw3ckFsUer34=
X-Google-Smtp-Source: ABdhPJxEJnyR/CMagE3F7k8+WMwoAmVy/wG8ZBAtJf+ksh42KYHS/0iJr7IzafHSS9q5BchpNfoO8w==
X-Received: by 2002:a05:600c:8a2:: with SMTP id l34mr5042595wmp.4.1613676910499;
        Thu, 18 Feb 2021 11:35:10 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id d20sm11311347wrc.12.2021.02.18.11.35.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Feb 2021 11:35:09 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, Walter Harms <wharms@bfs.de>
Subject: [PATCH v5] scripts/bash_aliases: Add useful functions
Date:   Thu, 18 Feb 2021 20:33:25 +0100
Message-Id: <20210218193324.162297-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
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
v4:
	- grep_glibc_prototype(): Fix some corner cases where
	  a function invocation was printed.
v5:
	- grep_glibc_prototype(): Fix some corner cases where
	  a function prototype with many attributes wasn't printed.

---
 scripts/bash_aliases | 171 +++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 171 insertions(+)
 create mode 100644 scripts/bash_aliases

diff --git a/scripts/bash_aliases b/scripts/bash_aliases
new file mode 100644
index 000000000..486788ad3
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
+	  "(?s)^[^\s#][\w\s]+\s+\**${1}\s*\([\w\s()[\]*,]+?(...)?\)[\w\s(),]*;" \
+	|sed -E 's/^[^:]+:[0-9]+:/&\n/';
+}
-- 
2.30.1.721.g45526154a5

