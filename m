Return-Path: <linux-man+bounces-940-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B41C28C9BB9
	for <lists+linux-man@lfdr.de>; Mon, 20 May 2024 13:00:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 637E11F2161F
	for <lists+linux-man@lfdr.de>; Mon, 20 May 2024 11:00:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B772F53380;
	Mon, 20 May 2024 11:00:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FtfoGlAQ"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF1685336F
	for <linux-man@vger.kernel.org>; Mon, 20 May 2024 11:00:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716202802; cv=none; b=gkEMxrHPoVRoRptCd37wuTS+2GCbtUMVoW6DywH+d5QSfY7LgI/k8qvFBr/PGbv0IFLcUoe2qNoLIJAHga/4cq0krvYGvQ4egpVVvkeHPqekdTS/StN9IPYzVIcAQ+nOV2fTblbPrQSiEK/TNlNI2ZPARmtpqYUkCa1DHyEjCaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716202802; c=relaxed/simple;
	bh=k9oz0d5yyCZTQOGjLRn6dhqPYhJaO8/VFzbARHKY79c=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Z9E1Xppu4vP3YdVDVU/Z9ggss4otEUhiglYPWAVeoJHbWk5VZmWvIEDLdOt/+FXV7iM0+VcFX3uVcNC3LewkvFIZDBkMFDTevRVv2K/Py8Oc4+MN94wLP+VMr+DaJ+PZNkZzMAEhUAKHVSu8Nv2G4fcTHE1uRkvZIpEA0wjY7wU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FtfoGlAQ; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-52232d0e5ceso3592994e87.0
        for <linux-man@vger.kernel.org>; Mon, 20 May 2024 04:00:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716202799; x=1716807599; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XY162BwPhqxsZTFHFpdJG0FuWx24lCZ0S/xKRppTY20=;
        b=FtfoGlAQrYfgNTmje13F0z+sAfXf4Btn/k1pj3d+tURb2G7+KbkYY8/mCHqFifcVpw
         hN1U5oPdqOyQAL0pinbpsesR4xlvem+W/WtFhqVRmUArICnDABD3OGvOUzvKOMDNSr6w
         RxACTn4hJjA9fo7L3m51O96x3rsIOop7XFvk+2E8qKbH49wSXxmu0lqE77vsk7iR2HQw
         VzE+6xTS5Fiv0xVP5EoaS75hm8h6LHzvBA+3x7s3UAHbO/RiHHafVyzRylwQij3oUv7i
         2/OEsZSJtl+Uc1xPTCU/zjgcvVaKF402WLlrfUFtgXYkG9wVW/zClel+j+PECH1EDsqN
         VfGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716202799; x=1716807599;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XY162BwPhqxsZTFHFpdJG0FuWx24lCZ0S/xKRppTY20=;
        b=MPOCjWUHI84H3NfVrQ/GVWHtWdJkPVK86l5/GhPVqEhlhT2t0e2rsLXd7VmZZiKXPP
         U4ApgAN9WkxUzCaVHkSoQb02zdiooNXCz0Qey9RuNyD6u0m9vPkUrQEN8DcSSGk2/dss
         5mcsUdBgj1/saNsK4daHBZPm6naPosxC1InDhoLKbcyW9Oo+bWg2pcXPOvSrONn7BXnm
         eIDpV/WGnolIJ29d4IWKm4wLsWNShCphuqLHeDoC9GaRJgW2D5RBq8L3PQhZhsqwkddQ
         nor2bHIqHAhXVrVfN27dXYTfvjUkbC+rLSpEkNHC7aNy8n7qqJhQuL9nQcsWXgNfvSUe
         zP3g==
X-Gm-Message-State: AOJu0YyEV9BfZ2Ds1OXb82ED+62A1JjcTMuIkbZMjCKNmn5x4S1z1bJn
	iEj488ZcJQ+BgWoTVdGKPhVM01sP5HWjNTBBjHX0/V6UMVOnYABI
X-Google-Smtp-Source: AGHT+IHE2T1oTBUdEIl2RlE7+BMXXo5VzeMZjEfSBaPNDKbVPXBL6US0swLYCtWev5TauR2rLEAUbg==
X-Received: by 2002:a05:6512:23a0:b0:51b:e46c:19fd with SMTP id 2adb3069b0e04-5220fc7acdcmr20436734e87.18.1716202798817;
        Mon, 20 May 2024 03:59:58 -0700 (PDT)
Received: from localhost.localdomain ([77.241.232.20])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5733c34fed1sm14713831a12.96.2024.05.20.03.59.58
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Mon, 20 May 2024 03:59:58 -0700 (PDT)
From: technoboy85@gmail.com
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
	Matteo Croce <teknoraver@meta.com>
Subject: [PATCH] proc.5: make literals bold
Date: Mon, 20 May 2024 12:59:56 +0200
Message-ID: <20240520105956.71532-1-technoboy85@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Matteo Croce <teknoraver@meta.com>

Format the equal signs in the procfs mount options in bold to make it
clear that they are literal values.

Signed-off-by: Matteo Croce <teknoraver@meta.com>
---
 man/man5/proc.5 | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/man/man5/proc.5 b/man/man5/proc.5
index 5ae8fbf0c..d3bc28ff0 100644
--- a/man/man5/proc.5
+++ b/man/man5/proc.5
@@ -33,7 +33,7 @@ The
 .B proc
 filesystem supports the following mount options:
 .TP
-.BR hidepid "=\fIn\fP (since Linux 3.3)"
+.BR hidepid= "\fIn\fP (since Linux 3.3)"
 .\" commit 0499680a42141d86417a8fbaa8c8db806bea1201
 This option controls who can access the information in
 .IR /proc/ pid
@@ -91,7 +91,7 @@ some daemon is running with elevated privileges,
 whether another user is running some sensitive program,
 whether other users are running any program at all, and so on).
 .TP
-.BR gid "=\fIgid\fP (since Linux 3.3)"
+.BR gid= "\fIgid\fP (since Linux 3.3)"
 .\" commit 0499680a42141d86417a8fbaa8c8db806bea1201
 Specifies the ID of a group whose members are authorized to
 learn process information otherwise prohibited by
@@ -106,7 +106,7 @@ nonroot users into the
 file.
 .RE
 .TP
-.BR subset = pid " (since Linux 5.8)"
+.BR subset=pid " (since Linux 5.8)"
 .\" commit 6814ef2d992af09451bbeda4770daa204461329e
 Show only the specified subset of procfs,
 hiding all top level files and directories in the procfs
-- 
2.43.0


