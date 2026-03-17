Return-Path: <linux-man+bounces-5265-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uNDPGjxIuWmK+QEAu9opvQ
	(envelope-from <linux-man+bounces-5265-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 17 Mar 2026 13:25:32 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CEC52A9CE4
	for <lists+linux-man@lfdr.de>; Tue, 17 Mar 2026 13:25:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4AB4130091F8
	for <lists+linux-man@lfdr.de>; Tue, 17 Mar 2026 12:21:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F9E03C062A;
	Tue, 17 Mar 2026 12:21:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="m5GP02vf"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C2B63C13E6
	for <linux-man@vger.kernel.org>; Tue, 17 Mar 2026 12:21:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773750093; cv=none; b=nUyD8lqpuDhtLu1IFs/ZjjlyhHBQac8hHy/UvRApgdecciVg2ozdinKYFJw+rXKUz7/fyInDU96vfoY6mgj6NgUGkkkegjspv0BhkmE59seAKg5sGhInB3sY8nRYh05pA1sDu+fg0aaRTLYF1QkZvG5aEV8gh8bcTutpWfsMojo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773750093; c=relaxed/simple;
	bh=pM7lLEXPHgZa93WuXe5B4jITKQtFxwa0+rN4ea9NF8s=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=nP2RnUfm7hsGKIRXABlLiY+dKqVzXPTEoI2tgByxtwsqGO+oz3WyHhxD22I2Y4xr+RJd2XHRzSExBCYAymKfm9zU2hs1/HxnQYujXggTNQA7jMGjUp6XIdkMN6/JcBKAMQth3L5aE7NVGf2mmD4GrQYuJME6WnvaGM8/Z9NNzq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=m5GP02vf; arc=none smtp.client-ip=209.85.216.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-3567e2b4159so3071002a91.0
        for <linux-man@vger.kernel.org>; Tue, 17 Mar 2026 05:21:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773750091; x=1774354891; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=MK2m9HCZE4LQ1PtTeBpXozu7Gx5lhMFwgsqKUvBrCmU=;
        b=m5GP02vfJx6RoJ5rXqp5+mIVebpk9lRGL66enWxUdV6geteWXCKVmPGpF8vhYOpipN
         HGnJ5dXMM2OWi7FpLS3sWBgO/XWopF/3fQaeUSahLfyHFIZfBxukRb+TmjZUG2o5FSuH
         0NAlBMkotQw/DJbmooyZySpSDahzW3lyjY5Jl3fYC3vERabagpRZqFPt4kva9LVfRCsA
         d6ThxaqTrjRQK9zYjN+0sZWe2FzmlMWNHiDz9LJk1NKf6SQzoQq1OiBIs2gsH2S++0MH
         PeICABfZ568GZGRDN0kovllrus+pW0K50HvOhy47smS8nj75MtQmDlrtlVM2YVMPRy4O
         4XIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773750091; x=1774354891;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MK2m9HCZE4LQ1PtTeBpXozu7Gx5lhMFwgsqKUvBrCmU=;
        b=ESxp3OGH4HxlyqEox4gruRkuQz3UEM0YYRb8UnHnCXWy57C+XB5j++PhKkscWc3n0G
         EYGcUnIXuPNroz5off98L8Gx3sSvILhEzNd5ykDrGfJxkJALU7Y/51KuIGY6QjFzuWuq
         VGwIHc/g88phZlDkvVNztNEpQPxI/Uc7thna2Xd0Xxn02EC90L9vgQClrSY+sxHfuY+O
         a295ux1vaCIefhoD6s5xkafvUHDP5cucm1zImsKuMi4Av2WOQ9Eb+5AQBt5vCvCPjONf
         Rx4iFpSY4cOiAN2ynn3O3t7IpPx1bd6HZS7TFYTPhNMIgHhx4ytcDdfM+ucSGdwPIhfF
         /nfw==
X-Forwarded-Encrypted: i=1; AJvYcCXxJwAtDWNkdLTqlWJPhsp6En2V5CPl15yh3Cl/XoGYH/6aKCCQaQcuoPGILN31ROz1HcsUzIb343w=@vger.kernel.org
X-Gm-Message-State: AOJu0Yxm5zvvQRpiQF9tGHHefPPryiMRPdwZ5uh5XcaRKA9VIRW89SSR
	pbHxdn3vciDfOn9/C2q+HQxIhHxTAulLFbhiqI2SDZi+opuu0tHA20aa
X-Gm-Gg: ATEYQzxudmxUCFZAwv9RzuYARWZP8S0roRmG6ftnjeiAj73dnqVKlPW5mQPwOb3+VNo
	9WMIAkEwUCQK6Xw0d/zsUY8WZB6X9brV/FxNafeJ1exVx+Xy1KTr58pUvlSSi5QyGUjXCzo4u1q
	ntDTtSw9WQbMLD+o4NxM4oiofe2RoFybXlL4aNRcyOKyYLkvKs7866ri17lnT38Rq2SdVE2SZaS
	OK6FM4x5VTLa3FbM5dWzhjkXt/98qkM43jsAZ3kBxNPC5nYLIRR6H1XhH+WNxLiNP+/2k4BiXd3
	A9stOKZkU+vzj4SX+KatPRTjL6AGE8UfVK/EAczv2R0jc+yV4H+FLCymIuwnMysquKNrM04ZpHR
	PJx3xmNv5QwR+XNgSmltA1adErXRTNuVSq65l2ahb6OuPrgacLPa1oVuk4Jhchozsve/5wvR/Fz
	KkCWB6kB0K6sJZ21S4UdTEM2WB44OgY0D+kFijCxOQ2Dzz0O1n+n9sog==
X-Received: by 2002:a17:90b:4a46:b0:359:f6f8:57b8 with SMTP id 98e67ed59e1d1-35a21e37d7cmr13702741a91.1.1773750091414;
        Tue, 17 Mar 2026 05:21:31 -0700 (PDT)
Received: from fedora ([2405:201:3017:184:8df:188f:bb44:232b])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35badb90b8esm2810359a91.11.2026.03.17.05.21.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 05:21:30 -0700 (PDT)
From: Bhavik Sachdev <b.sachdev1904@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Bhavik Sachdev <b.sachdev1904@gmail.com>,
	linux-man@vger.kernel.org,
	criu@lists.linux.dev,
	Andrei Vagin <avagin@gmail.com>,
	Pavel Tikhomirov <ptikhomirov@virtuozzo.com>,
	Christian Brauner <brauner@kernel.org>
Subject: [PATCH] man/man2/statmount.2: Fix STATMOUNT_MNT_{UID,GID}MAP documentation
Date: Tue, 17 Mar 2026 17:48:33 +0530
Message-ID: <6e8de405e5ada94279b68cd2d2159cb8393921ea.1773749913.git.b.sachdev1904@gmail.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-5265-lists,linux-man=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,lists.linux.dev,virtuozzo.com,kernel.org];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bsachdev1904@gmail.com,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[linux-man];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 6CEC52A9CE4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

In case of idmapped mounts and statmount(), three cases can occur:

1. The mount is not an idmapped mount. In this case, smbuf->mask will
   *not* have STATMOUNT_MNT_{UID,GID}MAP set.
2. The mount is an idmapped mount but *all* its mappings are *not*
   resolvable in the user namespace of the caller.
   In this case, smbuf->mask will have STATMOUNT_MNT_{UID,GID}MAP set
   but smbuf->mnt_{uid,gid}map_num will be 0.
3. The mount is an idmapped mount and *all* its mappings are resolvable
   in the user namespace of the caller.
   In this case, smbuf->mask will have STATMOUNT_MNT_{UID,GID}MAP set
   and mbuf->mnt_{uid,gid}map_num will be greater than 0.

The current documentation fails to differentiate between case 1 and 2
and incorrectly states that STATMOUNT_MNT_{UID,GID}MAP will be set for
non-idmapped mounts.

We can verify that the above is the case by looking at [1] and is made
explicitly clear by the comment in the implementation [2]. The case for
STATMOUNT_MNT_{UID,GID}MAP not being raised for a non-idmapped mount can
be verified by running this program [3].

[1]:
<https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=37c4a9590e1efcae7749682239fc22a330d2d325>
[2]:
<https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/fs/namespace.c#n5489>
[3]: <https://gist.github.com/bsach64/674264ec69e592f906b2713c9f95060b>

Signed-off-by: Bhavik Sachdev <b.sachdev1904@gmail.com>
---
Hey Alex!

My understanding of how statmount() differentiated between idmapped
mounts and non-idmapped mounts was incorrect. This patch fixes the
incorrect documentation introduced as a result.

Thanks,
Bhavik

 man/man2/statmount.2 | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/man/man2/statmount.2 b/man/man2/statmount.2
index 42ca902d9..40a07181b 100644
--- a/man/man2/statmount.2
+++ b/man/man2/statmount.2
@@ -356,7 +356,8 @@ .SS The returned information
 If
 .I smbuf.mask
 has STATMOUNT_UIDMAP set and this field is 0,
-the mount is not an idmapped mount.
+then uid mappings applied on the mount cannot be resolved in the user namespace
+of the caller.
 .TP
 .IR smbuf.mnt_uidmap " (since Linux 6.15)"
 The offset to the location in the
@@ -372,7 +373,8 @@ .SS The returned information
 If
 .I smbuf.mask
 has STATMOUNT_GIDMAP set and this field is 0,
-the mount is not an idmapped mount.
+then gid mappings applied on the mount cannot be resolved in the user namespace
+of the caller.
 .TP
 .IR smbuf.mnt_gidmap " (since Linux 6.15)"
 The offset to the location in the
-- 
2.53.0


