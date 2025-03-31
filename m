Return-Path: <linux-man+bounces-2696-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 372F0A76259
	for <lists+linux-man@lfdr.de>; Mon, 31 Mar 2025 10:33:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DD7CD1689D3
	for <lists+linux-man@lfdr.de>; Mon, 31 Mar 2025 08:33:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E229B1DF269;
	Mon, 31 Mar 2025 08:28:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iqCZ7Nxg"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CA491DED56
	for <linux-man@vger.kernel.org>; Mon, 31 Mar 2025 08:28:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743409688; cv=none; b=rm+YujLKgIp/+hBSc3XUAHZ1e9rlKEshI4UDDzo6vuXjb+AOvJxIA68WMTJAsPqPimP//cYOvI4WWgDD1cKl+zXEFyoqLC5cEg+fZdtREXmrZMpMn0PJl+1R6VxY0YW7oPi5k6CjsKErgQIJgyHOaJiOPBRhrgQvFAEtXXMnRKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743409688; c=relaxed/simple;
	bh=95dGzQXS01VYBMK04waCviQd2TeqEXEbcn/bz4l/QhA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Xxg/AB8miABRDSi6nNlK+V0zoyqXhByAeTMCVKwUS1TZpAXcGgGKT+0h5j7RphHIgrILyXkTaMysqsB7NVMiqkaCoIQ36YrQ92f8/XGAxR13ndxwW2V12L/DsgwYcFvSs7s3cHWnVL49rNOtuPglRqXU+8LBfQCkHi1uvyDahOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iqCZ7Nxg; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-5e6ff035e9aso3379447a12.0
        for <linux-man@vger.kernel.org>; Mon, 31 Mar 2025 01:28:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743409685; x=1744014485; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=D+9+momBShBC04V/bh+hQalj7c3XWXaMOAckgBod5DM=;
        b=iqCZ7NxgyJjzBcDcAUvZCp0ybI1p7XDvwh53rL6EXmO0wTiH2UzHQuKYRH8wnxkt5c
         gozWEqxC4WQhdPSJpz3USzRVQWBLvbWt72oeIWEoOG8I4yWt61/AMX0MI40FnnpnmiMz
         UaLY4FWEgkR4sQacGoOMU+0hxM0s1W9fReK6Sfv51q2v+zDnKgaWKChnMsDywiMdk/gD
         eP4IbJEUU1+u/eyVB6TEBUxtmwLJMDlBWbLKAexxYxINhT8YCrwnJNYmaogx5z73DVxc
         RbC1xSG8hoajlS75MvZlb+fYDVhe8PmPnAtD9dD5OXVrx6HMCZJLpBskzl6qtvAFl7Gv
         OFbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743409685; x=1744014485;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=D+9+momBShBC04V/bh+hQalj7c3XWXaMOAckgBod5DM=;
        b=jQ1i24zinIYWKmYozZsKOgMEkq6y/kxwbSu7Z5KRTQngyba+c5J8s0icoGQr1sWNBe
         sbdyGpOD7P1BwkHRsgg6ng5JOOxzqcIUu4VuswcU9dHsLUov8c56jxwjjAeV/5LC5ibn
         qB6LC7fnZRpaguIDc8Pq+yn2T066R0f7MhHjRjfEjEvRiC/bDRknN1/i37GeRTuVtrxM
         TDtRi6LF5mWWSQ4AGckNI/mDNJx++m3zfVVrP4rbnfWOcLS39qNzkU6O/5WJymCYhRym
         AAYg4B4geKWXNuHmILBtHQ+RwDzViuF1UWOpfZx+xh7oye3XYwNFjnocRWGrUG9aW5aX
         EfyA==
X-Forwarded-Encrypted: i=1; AJvYcCXgdvCUsSZ5AKod2gTWH9hUI0IRVRmHnzkBFkOjERzVqR/GM52+IuIgs9LzRTs20Vk4AF8tvjESwm8=@vger.kernel.org
X-Gm-Message-State: AOJu0YxXQJ1/BbMDdjJ1xWt4NazJYVpBE1ULm6FZgfT05SdPbXan4REK
	0NWsseMfD6CIVkQAT53hjngBeunXnL0rK3xoNYKeXP7A8lIV9CB1
X-Gm-Gg: ASbGnctLtJPaGB7ZZ4faJxp5d/KKEJXLEiobro7RQl+fb6TZlozK/S2ISpLMfu74umm
	YD0x9V6+mAYgPDOCqVYHfP9tgKlCsnFrO5wTkl9rsNkTUoaLeWqa7XNiIzftpMy/CCpq49PZP7T
	fMHHjNDAfXg7Pg0cevVTxIkU/tkQMm9Hq8y/pEwrFPMH6i4DScVpY+x6uoqzYyo99cxgjr+8IGu
	GYwLjujNo1UpA5STcMZMeUg7Y+FCn/CPkoYwxY7KQbmlClB/OmSk+NeWoELZsEzxTkA75IZULj+
	Pwe3VlUtPWg7Y3zmeqVO0QBtZpAHNQEvst2nwLFkTBD5WJcFYa9Af7FANhi1bqhvzUVrddhoS2f
	5xkXSavtSpZJc6Bycr+zL8DCZ/5t1mKTdHiNw69xv4A==
X-Google-Smtp-Source: AGHT+IFhbmw6fQpo2Ypj36lHo1DJbDTgPZib1INmvQeid+sk0IJRJ1jRo1Jj5ZjLhbdQM5dJHBz9Fg==
X-Received: by 2002:a05:6402:2693:b0:5e4:a1e8:3f04 with SMTP id 4fb4d7f45d1cf-5edfce94debmr7013447a12.8.1743409684918;
        Mon, 31 Mar 2025 01:28:04 -0700 (PDT)
Received: from amir-ThinkPad-T480.arnhem.chello.nl (92-109-99-123.cable.dynamic.v4.ziggo.nl. [92.109.99.123])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5edc16ef7a7sm5468722a12.36.2025.03.31.01.28.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Mar 2025 01:28:04 -0700 (PDT)
From: Amir Goldstein <amir73il@gmail.com>
To: Alejandro Colomar <alx.manpages@gmail.com>
Cc: Jan Kara <jack@suse.cz>,
	linux-man@vger.kernel.org
Subject: [PATCH v2 3/3] fanotify.7: Document FAN_DENY_ERRNO()
Date: Mon, 31 Mar 2025 10:27:59 +0200
Message-Id: <20250331082759.1424401-3-amir73il@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250331082759.1424401-1-amir73il@gmail.com>
References: <20250331082759.1424401-1-amir73il@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document FAN_DENY_ERRNO(), that was added in v6.13 to
report specific errors on file access.

Cc: Jan Kara <jack@suse.cz>
Cc: Josef Bacik <josef@toxicpanda.com>
Signed-off-by: Amir Goldstein <amir73il@gmail.com>
---

Changes since v1:
- Split out to 3 patches
- Add example of FAN_DENY_ERRNO

 man/man7/fanotify.7 | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/man/man7/fanotify.7 b/man/man7/fanotify.7
index 863578bd7..a532a963a 100644
--- a/man/man7/fanotify.7
+++ b/man/man7/fanotify.7
@@ -778,6 +778,28 @@ to deny the file operation.
 If access is denied, the requesting application call will receive an
 .B EPERM
 error.
+Since Linux 6.13,
+.\" commit b4b2ff4f61ded819bfa22e50fdec7693f51cbbee
+if a notification group is initialized with class
+.BR FAN_CLASS_PRE_CONTENT ,
+the file operation can be denied with errors other than
+.BR EPERM .
+For example, for the requesting application to get the
+.B EIO
+error, the event listener can write the response
+.BR FAN_DENY_ERRNO ( EIO ).
+At the time of writing,
+only the following error values could be returned to the application with
+.BR FAN_DENY_ERRNO
+macro:
+.BR EPERM ,
+.BR EIO ,
+.BR EBUSY ,
+.BR ETXTBSY ,
+.BR EAGAIN ,
+.BR ENOSPC ,
+.BR EDQUOT .
+.P
 Additionally, if the notification group has been created with the
 .B FAN_ENABLE_AUDIT
 flag, then the
-- 
2.34.1


