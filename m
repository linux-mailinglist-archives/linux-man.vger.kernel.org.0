Return-Path: <linux-man+bounces-4795-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C67CD151E9
	for <lists+linux-man@lfdr.de>; Mon, 12 Jan 2026 20:45:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A4A5930049CC
	for <lists+linux-man@lfdr.de>; Mon, 12 Jan 2026 19:45:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 303F7315D40;
	Mon, 12 Jan 2026 19:45:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QoZe9oqc"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7529430F816
	for <linux-man@vger.kernel.org>; Mon, 12 Jan 2026 19:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768247135; cv=none; b=JHEbTwI8g0diVrr1/SZdu1UdK+zb3IeI7SW1XSZltF9MJrIN3NTqw17wyqwMi1lQFOTUgShLmr6tTXFOTT7Bh77nQdHf3Ze70/40M8udo8cqB4qZeZAP8RIPcnIjbAxQOWgWa1jjKew4M2BW2q4RDOtEhTX3yhYk/t49IGpUEHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768247135; c=relaxed/simple;
	bh=FxSADg9z+ZiyTEme5p5S8kCGSh1+yWn40mK4XdoWKdw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=NzYtb5nUDWFfb7JADf1QhUDO2qL5MtmF5IJt+UD4zkuywjTaxDP+X62qc024WN0CXURc6M0wPs9Z8v9zPjxbFksSy3YbjZ8aIaSCFltocOYdcnQ6PIkBTZwIstiNhfxwA97UdnpoZi9VWMQE2djoDxASe7cVufS0mDXjN4hnyGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QoZe9oqc; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-b872cf905d3so151494166b.2
        for <linux-man@vger.kernel.org>; Mon, 12 Jan 2026 11:45:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768247132; x=1768851932; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=yidhgbBWyEC3gg8PW6JbHYTq5M3zrwM5hQR58zYpxYQ=;
        b=QoZe9oqc0WL8qwwjhJXS+jki9ut/0FAxUc2Iuyaelq7eLYq5dC5TCHJxHv/C2hcyUQ
         DPdckJEfFJE0SmjpjmZKTxBxz7+S5iW9puEX3xHHGzHsqGRKoB2LlxZxP2Me9RD3IRa7
         zob6NajiawmSNYRUqJP2lbTEg8MewaIn3cKaIEdtefWH7Lwm82i80uqHpC8UX7At4mer
         8tqtyCGiKOXzB3olkfO5fJZBZPbU3IRwAUwV9OeHNIN0FtIzNi1OKor44dPuV6n0QoUY
         qRUPdvfbg18+3CJRYSz8CoX3DhgPM+44Ab8zn75yjOMmCsK9Gsnuw0GiMroQH3jbOm/6
         evBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768247132; x=1768851932;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yidhgbBWyEC3gg8PW6JbHYTq5M3zrwM5hQR58zYpxYQ=;
        b=CZqSmvaXZNjKK6PXcij3xxUFoy0F3g8krRdVglRZauVN3lXSXG1j53uoQtNcyzSyvX
         YBgy5GjOBTv/KJW0cg5oOkoeu91mM+2ql6e7Rk4xvFoWZP5hyauOxSiC3mC41X7xqJAL
         8S5unb3b/57t6ncJMfp0N1m3xpg5fURcl0YPQ72XcVd3jOkUEAFu94rvrjJFEK/YygXt
         Yf+GJILmInY21we946WN26z+6QfKDIWEi6f1UgezEiYG4mAMC9Vltww8yqNeXXrYKgQS
         aS6KdCY7g/mGj9wa3tRqR/EvpNAEArRXlixNcw96rrZ5f4he6JRD9iiGQJYTF8SktzUQ
         3KcQ==
X-Forwarded-Encrypted: i=1; AJvYcCXx8zKfT+92rTVSncHxMhkhdp6iTbPGdBWZPl0DufV/FE8+jBNIpG2wGn4wRCgjy4w0+mGnWRGoV04=@vger.kernel.org
X-Gm-Message-State: AOJu0YwXeWfX9plrm4PlWmfAvLRPyKaMEYWLIhxqYadXFHYCl/7ESxvB
	M32xTJSmJmE+ZSV1Ip59QPh0uWLVTT1EUDCOEM028tnbxIIX8sGemQgyVoHr2HHW
X-Gm-Gg: AY/fxX6oo+rtvOVwea+cAcA+8knKRU4IjeIvxQdVfy1vfXAo329daPXMjG1MrTAVoci
	y9sseTArzhF+AGexmZOYEXVS1XAuvKQxwy26B70p0eeVXpUB/9JCf5jCbo/qV1gfwJYhDuvRpif
	foBirOt4lLPH5cOJhYJ8/oVtZ8ubz74JLeQeYUO6vR/ZmWIcK+/sGpMBfk7tl0Ut4vmjKl07Tdw
	i0CN3UnOIF3pwmk7bVWbu1WI7vrENOg2Cn9VpABvryjfHTC29NKeNa64vG/6O58rqfYnMI0w2Hn
	imix693xNWV+CX3mOJ4qTTurYPQKQUTysBEqufILm21bS/yHBznISRoOzJeUkhKz2z4mtoDFQBB
	Tzp883zWFM46fuOMam4OqIwbYtU0Z65xVc7ar+lMWS8YGWGtgL4iWPEOxHP4k48pkfAUv+YaRyV
	vGJTdsIJ/zj1ub7fZIIzvECbQcuyIQZOXqWj/k
X-Google-Smtp-Source: AGHT+IGTPefg1tMBckmz5dUsbPooKpF8xOWiUsegGkccyEdYXkw114HlS48nD6+oBoOqjmnqk/umMQ==
X-Received: by 2002:a17:907:a089:b0:b87:1ffc:bfbd with SMTP id a640c23a62f3a-b871ffcc370mr344277066b.7.1768247131623;
        Mon, 12 Jan 2026 11:45:31 -0800 (PST)
Received: from localhost (ip87-106-108-193.pbiaas.com. [87.106.108.193])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b86ebfd08b2sm829738166b.25.2026.01.12.11.45.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 11:45:31 -0800 (PST)
From: =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To: Alejandro Colomar <alx.manpages@gmail.com>
Cc: =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>,
	=?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>,
	linux-man@vger.kernel.org
Subject: [PATCH man] landlock.7: Re-group description of IOCTL access right
Date: Mon, 12 Jan 2026 20:45:17 +0100
Message-ID: <20260112194520.5854-2-gnoack3000@gmail.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Move the description of the LANDLOCK_ACCESS_FS_IOCTL_DEV access right
together with the file access rights.

This group of access rights applies to files (in this case device
files), and they can be added to file or directory inodes using
landlock_add_rule(2).  The check for that works the same for all file
access rights, including LANDLOCK_ACCESS_FS_IOCTL_DEV.

Invoking ioctl(2) on directory FDs can not currently be restricted
with Landlock.  Having it grouped separately in the documentation is a
remnant from earlier revisions of the LANDLOCK_ACCESS_FS_IOCTL_DEV
patch set.

The same change was also done in kernel documentation, linked below.

Link: https://lore.kernel.org/all/20260111175203.6545-2-gnoack3000@gmail.com/
Signed-off-by: Günther Noack <gnoack3000@gmail.com>
---
 man/man7/landlock.7 | 81 ++++++++++++++++++++++-----------------------
 1 file changed, 39 insertions(+), 42 deletions(-)

diff --git a/man/man7/landlock.7 b/man/man7/landlock.7
index 5d4a24f79..c31d513d1 100644
--- a/man/man7/landlock.7
+++ b/man/man7/landlock.7
@@ -97,6 +97,45 @@ with
 .BR O_TRUNC .
 .IP
 This access right is available since the third version of the Landlock ABI.
+.TP
+.B LANDLOCK_ACCESS_FS_IOCTL_DEV
+Invoke
+.BR ioctl (2)
+commands on an opened character or block device.
+.IP
+This access right applies to all
+.BR ioctl (2)
+commands implemented by device drivers.
+However, the following common IOCTL commands continue to be invokable
+independent of the
+.B LANDLOCK_ACCESS_FS_IOCTL_DEV
+right:
+.RS
+.IP \[bu] 3
+IOCTL commands targeting file descriptors
+.RB ( FIOCLEX ,
+.BR FIONCLEX ),
+.IP \[bu]
+IOCTL commands targeting file descriptions
+.RB ( FIONBIO ,
+.BR FIOASYNC ),
+.IP \[bu]
+IOCTL commands targeting file systems
+.RB ( FIFREEZE ,
+.BR FITHAW ,
+.BR FIGETBSZ ,
+.BR FS_IOC_GETFSUUID ,
+.BR FS_IOC_GETFSSYSFSPATH )
+.IP \[bu]
+Some IOCTL commands which do not make sense when used with devices, but
+whose implementations are safe and return the right error codes
+.RB ( FS_IOC_FIEMAP ,
+.BR FICLONE ,
+.BR FICLONERANGE ,
+.BR FIDEDUPERANGE )
+.RE
+.IP
+This access right is available since the fifth version of the Landlock ABI.
 .P
 Whether an opened file can be truncated with
 .BR ftruncate (2)
@@ -198,48 +237,6 @@ If multiple requirements are not met, the
 .B EACCES
 error code takes precedence over
 .BR EXDEV .
-.P
-The following access right
-applies to both files and directories:
-.TP
-.B LANDLOCK_ACCESS_FS_IOCTL_DEV
-Invoke
-.BR ioctl (2)
-commands on an opened character or block device.
-.IP
-This access right applies to all
-.BR ioctl (2)
-commands implemented by device drivers.
-However, the following common IOCTL commands continue to be invokable
-independent of the
-.B LANDLOCK_ACCESS_FS_IOCTL_DEV
-right:
-.RS
-.IP \[bu] 3
-IOCTL commands targeting file descriptors
-.RB ( FIOCLEX ,
-.BR FIONCLEX ),
-.IP \[bu]
-IOCTL commands targeting file descriptions
-.RB ( FIONBIO ,
-.BR FIOASYNC ),
-.IP \[bu]
-IOCTL commands targeting file systems
-.RB ( FIFREEZE ,
-.BR FITHAW ,
-.BR FIGETBSZ ,
-.BR FS_IOC_GETFSUUID ,
-.BR FS_IOC_GETFSSYSFSPATH )
-.IP \[bu]
-Some IOCTL commands which do not make sense when used with devices, but
-whose implementations are safe and return the right error codes
-.RB ( FS_IOC_FIEMAP ,
-.BR FICLONE ,
-.BR FICLONERANGE ,
-.BR FIDEDUPERANGE )
-.RE
-.IP
-This access right is available since the fifth version of the Landlock ABI.
 .\"
 .SS Network flags
 These flags enable to restrict a sandboxed process
-- 
2.52.0


