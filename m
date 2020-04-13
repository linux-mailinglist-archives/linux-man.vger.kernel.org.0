Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6553C1A6A64
	for <lists+linux-man@lfdr.de>; Mon, 13 Apr 2020 18:55:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731929AbgDMQxB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 13 Apr 2020 12:53:01 -0400
Received: from mail.kernel.org ([198.145.29.99]:44958 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1731924AbgDMQw7 (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 13 Apr 2020 12:52:59 -0400
Received: from quaco.ghostprotocols.net (unknown [179.97.37.151])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 46D0220739;
        Mon, 13 Apr 2020 16:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1586796778;
        bh=AZCNiUuo0pxHeO+aJlmwaA0C6S0Rh07TyPlIwE9v7Dg=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=TAKTvc/OF25bQDCR/uyDcAB2rpff1XoNVDOO7MTaH8SXWILGpgZklKzuV6h7skPSd
         B6bLCGGt5tEL9EQonyG7omEt9hROc2Rld08Heqqh929nO/dBaMfgfwFpeDvknOhWer
         L/MDnW/y+KTlL/LQt64C/dz/ASrYX7U5Fx6ueXlE=
From:   Arnaldo Carvalho de Melo <acme@kernel.org>
To:     Ingo Molnar <mingo@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>
Cc:     Jiri Olsa <jolsa@kernel.org>, Namhyung Kim <namhyung@kernel.org>,
        Clark Williams <williams@redhat.com>,
        linux-kernel@vger.kernel.org, linux-perf-users@vger.kernel.org,
        Alexey Budankov <alexey.budankov@linux.intel.com>,
        James Morris <jamorris@linux.microsoft.com>,
        Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
        Alexei Starovoitov <ast@kernel.org>,
        Andi Kleen <ak@linux.intel.com>,
        Igor Lubashev <ilubashe@akamai.com>,
        Jiri Olsa <jolsa@redhat.com>,
        Peter Zijlstra <peterz@infradead.org>,
        Serge Hallyn <serge@hallyn.com>,
        Song Liu <songliubraving@fb.com>,
        Stephane Eranian <eranian@google.com>,
        intel-gfx@lists.freedesktop.org, linux-doc@vger.kernel.org,
        linux-man@vger.kernel.org, linux-security-module@vger.kernel.org,
        selinux@vger.kernel.org, Arnaldo Carvalho de Melo <acme@redhat.com>
Subject: [PATCH 09/26] drm/i915/perf: Open access for CAP_PERFMON privileged process
Date:   Mon, 13 Apr 2020 13:51:46 -0300
Message-Id: <20200413165203.1816-10-acme@kernel.org>
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

Open access to i915_perf monitoring for CAP_PERFMON privileged process.
Providing the access under CAP_PERFMON capability singly, without the
rest of CAP_SYS_ADMIN credentials, excludes chances to misuse the
credentials and makes operation more secure.

CAP_PERFMON implements the principle of least privilege for performance
monitoring and observability operations (POSIX IEEE 1003.1e 2.2.2.39
principle of least privilege: A security design principle that states
that a process or program be granted only those privileges (e.g.,
capabilities) necessary to accomplish its legitimate function, and only
for the time that such privileges are actually required)

For backward compatibility reasons access to i915_events subsystem remains
open for CAP_SYS_ADMIN privileged processes but CAP_SYS_ADMIN usage for
secure i915_events monitoring is discouraged with respect to CAP_PERFMON
capability.

Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>
Reviewed-by: James Morris <jamorris@linux.microsoft.com>
Acked-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
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
Cc: linux-man@vger.kernel.org
Cc: linux-security-module@vger.kernel.org
Cc: selinux@vger.kernel.org
Link: http://lore.kernel.org/lkml/e3e3292f-f765-ea98-e59c-fbe2db93fd34@linux.intel.com
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 3b6b913bd27a..f59265cebe1e 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -3402,10 +3402,10 @@ i915_perf_open_ioctl_locked(struct i915_perf *perf,
 	/* Similar to perf's kernel.perf_paranoid_cpu sysctl option
 	 * we check a dev.i915.perf_stream_paranoid sysctl option
 	 * to determine if it's ok to access system wide OA counters
-	 * without CAP_SYS_ADMIN privileges.
+	 * without CAP_PERFMON or CAP_SYS_ADMIN privileges.
 	 */
 	if (privileged_op &&
-	    i915_perf_stream_paranoid && !capable(CAP_SYS_ADMIN)) {
+	    i915_perf_stream_paranoid && !perfmon_capable()) {
 		DRM_DEBUG("Insufficient privileges to open i915 perf stream\n");
 		ret = -EACCES;
 		goto err_ctx;
@@ -3598,9 +3598,8 @@ static int read_properties_unlocked(struct i915_perf *perf,
 			} else
 				oa_freq_hz = 0;
 
-			if (oa_freq_hz > i915_oa_max_sample_rate &&
-			    !capable(CAP_SYS_ADMIN)) {
-				DRM_DEBUG("OA exponent would exceed the max sampling frequency (sysctl dev.i915.oa_max_sample_rate) %uHz without root privileges\n",
+			if (oa_freq_hz > i915_oa_max_sample_rate && !perfmon_capable()) {
+				DRM_DEBUG("OA exponent would exceed the max sampling frequency (sysctl dev.i915.oa_max_sample_rate) %uHz without CAP_PERFMON or CAP_SYS_ADMIN privileges\n",
 					  i915_oa_max_sample_rate);
 				return -EACCES;
 			}
@@ -4021,7 +4020,7 @@ int i915_perf_add_config_ioctl(struct drm_device *dev, void *data,
 		return -EINVAL;
 	}
 
-	if (i915_perf_stream_paranoid && !capable(CAP_SYS_ADMIN)) {
+	if (i915_perf_stream_paranoid && !perfmon_capable()) {
 		DRM_DEBUG("Insufficient privileges to add i915 OA config\n");
 		return -EACCES;
 	}
@@ -4168,7 +4167,7 @@ int i915_perf_remove_config_ioctl(struct drm_device *dev, void *data,
 		return -ENOTSUPP;
 	}
 
-	if (i915_perf_stream_paranoid && !capable(CAP_SYS_ADMIN)) {
+	if (i915_perf_stream_paranoid && !perfmon_capable()) {
 		DRM_DEBUG("Insufficient privileges to remove i915 OA config\n");
 		return -EACCES;
 	}
-- 
2.21.1

