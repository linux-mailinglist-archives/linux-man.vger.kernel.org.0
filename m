Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8DD301A6A60
	for <lists+linux-man@lfdr.de>; Mon, 13 Apr 2020 18:55:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731914AbgDMQwz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 13 Apr 2020 12:52:55 -0400
Received: from mail.kernel.org ([198.145.29.99]:44498 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1731888AbgDMQwr (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 13 Apr 2020 12:52:47 -0400
Received: from quaco.ghostprotocols.net (unknown [179.97.37.151])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 2030B2087E;
        Mon, 13 Apr 2020 16:52:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1586796767;
        bh=Rga1D3cK14O+qqKeg6tGi3bA8mpj9qp+j1W9iwbOErs=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=0hLHKginxwmc7vqxFKamZo09Yb94XpkfkJ+INiiyiViSBbNlUtmnvXx2pY9ce7Sfi
         LUj5c+HYJzf6vh+Pip17zzpL4OaFytxZuJQbQEVdfpxqD1z1wr4Xa1HixM5QzNH75t
         Qh3vIcDwWmjkUlg3gQ2eNH+V1kBf9SzPq1/k0pfg=
From:   Arnaldo Carvalho de Melo <acme@kernel.org>
To:     Ingo Molnar <mingo@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>
Cc:     Jiri Olsa <jolsa@kernel.org>, Namhyung Kim <namhyung@kernel.org>,
        Clark Williams <williams@redhat.com>,
        linux-kernel@vger.kernel.org, linux-perf-users@vger.kernel.org,
        Alexey Budankov <alexey.budankov@linux.intel.com>,
        James Morris <jamorris@linux.microsoft.com>,
        Arnaldo Carvalho de Melo <acme@redhat.com>,
        Alexei Starovoitov <ast@kernel.org>,
        Andi Kleen <ak@linux.intel.com>,
        Igor Lubashev <ilubashe@akamai.com>,
        Jiri Olsa <jolsa@redhat.com>,
        Peter Zijlstra <peterz@infradead.org>,
        Serge Hallyn <serge@hallyn.com>,
        Song Liu <songliubraving@fb.com>,
        Stephane Eranian <eranian@google.com>,
        intel-gfx@lists.freedesktop.org, linux-doc@vger.kernel.org,
        linux-security-module@vger.kernel.org, selinux@vger.kernel.org,
        linux-man@vger.kernel.org
Subject: [PATCH 07/26] perf/core: open access to probes for CAP_PERFMON privileged process
Date:   Mon, 13 Apr 2020 13:51:44 -0300
Message-Id: <20200413165203.1816-8-acme@kernel.org>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200413165203.1816-1-acme@kernel.org>
References: <20200413165203.1816-1-acme@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Alexey Budankov <alexey.budankov@linux.intel.com>

Open access to monitoring via kprobes and uprobes and eBPF tracing for
CAP_PERFMON privileged process. Providing the access under CAP_PERFMON
capability singly, without the rest of CAP_SYS_ADMIN credentials,
excludes chances to misuse the credentials and makes operation more
secure.

perf kprobes and uprobes are used by ftrace and eBPF. perf probe uses
ftrace to define new kprobe events, and those events are treated as
tracepoint events. eBPF defines new probes via perf_event_open interface
and then the probes are used in eBPF tracing.

CAP_PERFMON implements the principle of least privilege for performance
monitoring and observability operations (POSIX IEEE 1003.1e 2.2.2.39
principle of least privilege: A security design principle that states
that a process or program be granted only those privileges (e.g.,
capabilities) necessary to accomplish its legitimate function, and only
for the time that such privileges are actually required)

For backward compatibility reasons access to perf_events subsystem
remains open for CAP_SYS_ADMIN privileged processes but CAP_SYS_ADMIN
usage for secure perf_events monitoring is discouraged with respect to
CAP_PERFMON capability.

Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>
Reviewed-by: James Morris <jamorris@linux.microsoft.com>
Tested-by: Arnaldo Carvalho de Melo <acme@redhat.com>
Cc: Alexei Starovoitov <ast@kernel.org>
Cc: Andi Kleen <ak@linux.intel.com>
Cc: Igor Lubashev <ilubashe@akamai.com>
Cc: Jiri Olsa <jolsa@redhat.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Serge Hallyn <serge@hallyn.com>
Cc: Song Liu <songliubraving@fb.com>
Cc: Stephane Eranian <eranian@google.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: intel-gfx@lists.freedesktop.org
Cc: linux-doc@vger.kernel.org
Cc: linux-security-module@vger.kernel.org
Cc: selinux@vger.kernel.org
Cc: linux-man@vger.kernel.org
Link: http://lore.kernel.org/lkml/3c129d9a-ba8a-3483-ecc5-ad6c8e7c203f@linux.intel.com
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 kernel/events/core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/kernel/events/core.c b/kernel/events/core.c
index f9d564127e2e..d6e021612b2c 100644
--- a/kernel/events/core.c
+++ b/kernel/events/core.c
@@ -9377,7 +9377,7 @@ static int perf_kprobe_event_init(struct perf_event *event)
 	if (event->attr.type != perf_kprobe.type)
 		return -ENOENT;
 
-	if (!capable(CAP_SYS_ADMIN))
+	if (!perfmon_capable())
 		return -EACCES;
 
 	/*
@@ -9437,7 +9437,7 @@ static int perf_uprobe_event_init(struct perf_event *event)
 	if (event->attr.type != perf_uprobe.type)
 		return -ENOENT;
 
-	if (!capable(CAP_SYS_ADMIN))
+	if (!perfmon_capable())
 		return -EACCES;
 
 	/*
-- 
2.21.1

