Return-Path: <linux-man+bounces-4740-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D0A4D071BE
	for <lists+linux-man@lfdr.de>; Fri, 09 Jan 2026 05:20:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6509E3019BCC
	for <lists+linux-man@lfdr.de>; Fri,  9 Jan 2026 04:20:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56E3878F2B;
	Fri,  9 Jan 2026 04:20:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="N0/hzKlp"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com [209.85.214.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6991500958
	for <linux-man@vger.kernel.org>; Fri,  9 Jan 2026 04:20:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767932411; cv=none; b=qiudTj5VGCU30pKeC8r3AVacOYDwFPT6vxLT+8nNVJa/tYByKlAZ+mRzaIYqeIhoRD4dKFqhtb43YoBK5aylRc3DWyKo6WigdLEYTkLtOxz4Zj+trNpa8HNRib+cqpU6Tdgr7aLj+AeoKKNMZ2phrLenjWQc7i8K6VVJkbHQ/zY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767932411; c=relaxed/simple;
	bh=9KHJqO/Go/xujsC2pXv9/tRIBtXu85OXAF6LWzl2WGE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BTUzQcx6qUgv4rkjXUoO6Rwrrfk3g0SD/YOayJf+KbJxuC+6F02pUv8Ns8Cv8MLM1vWE0zqjmTlRdV53OVOaPF1EgdgI2q9Dti4yflCiYBK4mCPM/UiqlgZvVRNi+3auMWxVt2J8fjr/ZAZYw0sBEVjOldPobWXek4iNuS98lkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=N0/hzKlp; arc=none smtp.client-ip=209.85.214.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f194.google.com with SMTP id d9443c01a7336-29f30233d8aso28335495ad.0
        for <linux-man@vger.kernel.org>; Thu, 08 Jan 2026 20:20:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767932409; x=1768537209; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=kkWqGpsmRc/2OvOfckQdsGSkNMaS6HOVSNWE1mPHgik=;
        b=N0/hzKlp/VpvndgW3nEmOIi3gT0dj/Bl+FaodIbL4geO0EYNXoJoAB4mF9+lm4QzBj
         J6GuMCp0NPAX27t0FYk0z6qNtzldwNMhIZg6is8a/5x/xuWcsRr72ZYXHh6nHS3uo62G
         ixv61IePnJsczCMGYBrh4lO/8L49vyMzufsRngO9mZr6hbUSMzLzlTsP+rNw/rmbBcFx
         DQt9O4G+ckFSW60uPJByvewih+o6ZK8bkD4o/tZBH35+N8NAHo2N2fFEfWtPocrW0J+r
         oVP+os0xTyqhTAE+jQ+CvIfmiLsSc6sA0H+T70yr7zjgWpQtwC0ri1qSsQpKF3ytyacN
         2xxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767932409; x=1768537209;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kkWqGpsmRc/2OvOfckQdsGSkNMaS6HOVSNWE1mPHgik=;
        b=lXnte2pRP17aRhZGXEjknjZnj2D70sENfpEhMMk/XwtfH2hoJzyUJ0JMzyvyzWGotJ
         nLzLlBah1wI1eSbSsjB9dinWBBDGk5F4WDtsYXsIA3QXN9X8yOZbKI/K+7nDcULzK8YF
         HRgdWfs+spK1wlwZBQZCO6znQolwATlbT6c0VSyHGMNLQVafL/dx4W/aANsHKMlMp/Dj
         vUC526nkf2XeIVAZSSeHM4Pr2awx3gWOGaZ4q4AEwE6DO6N9GYLlZbyYg4wIS5+rAmMq
         3RwYdNMYzJJhzM9Bn/sHsqYS9vfW4EwZeN3G1DfBjuHSSi1NR+24P6HLgPfOYtzh5HtG
         JEOQ==
X-Forwarded-Encrypted: i=1; AJvYcCXWEmwS1jD685FEm8xsFI4yVGfNVuRs4l3ETg31BJFXztRlD6HQVn8IItqAaB1asMoURelGX7Z8GVo=@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/27qRg3KWoBDube6GxK7PzO4YR+Ox9RujTaTthz38irOuqE1H
	jz8BGc9WWeSFRZ/Z5igX4JxHfrVv0KmqtU4xIvE+FpJwAGHOYq2ae2M5
X-Gm-Gg: AY/fxX7PsNOKlmnpsJYhbKjFUdOZgYHDnsJdqe+QVFZ84rPGDH2vcR3K8XLB2uHDXNA
	0DkqZ93mMxdNcc0YdF8gYnQb1kBaV/kQ9IgtxKSYdE2LmKSugaj5B9n7+J1Wy9AEzkh5zZEUtrH
	TAiENxQkCQS1fflj2MWCiIZ8g3DjQUgrqv3Kxq+pyKkWME+c241UjumDCotgd6gsCZppKHPUQww
	wIgJbf4sFGzNriKq8bmkHW702I4d2et0IaL2gUazhZf7rnhNcUcMzetd1Rt/ZIRoi87S929+iDE
	2oTiA0YCG8cIjI2MXMpAmfIiPytXHoDDKqwsbsaMQG1dBEn8IMH48OnDFrCPgd/AkABgGctffvm
	BHW62iK665LwwxdYAInlAx09QQRrljBxyecMxB28Qlt7n/dnGF64mmrAw2dgQ6gHlTxFnLM9eM7
	ScTjXvqmyX5XEWqWIqBvltyGdB9yY6ka53eoNY802GgiNE9ACDCtHz0uZwNSZgh8q6zOSj74n89
	vk7Phi4VnME35Fl5Q==
X-Google-Smtp-Source: AGHT+IHhUggYfS+sW+p9orUF3d6yhR2o+Wm+DKgu8VzRWiwhaG3bumQurw9/haUv26uXSLXySmtqnQ==
X-Received: by 2002:a17:903:2ec5:b0:29e:9e97:ca70 with SMTP id d9443c01a7336-2a3ee45b3a9mr86713255ad.25.1767932408970;
        Thu, 08 Jan 2026 20:20:08 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-1ba5-4bb2-ac31-391a.ip6.aussiebb.net. [2403:580b:5de8:0:1ba5:4bb2:ac31:391a])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3c47147sm90098055ad.22.2026.01.08.20.20.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 20:20:08 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v2 07/12] man/man3type/stat.3type: HISTORY: Update first POSIX appearance of stat(3type)
Date: Fri,  9 Jan 2026 14:19:01 +1000
Message-ID: <0611f62eeedbbf5f576851c46e5ab41d19b3d3a1.1767931376.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1767931376.git.sethmcmail@pm.me>
References: <cover.1767840410.git.sethmcmail@pm.me> <cover.1767931376.git.sethmcmail@pm.me>
Reply-To: Seth McDonald <sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Seth McDonald <sethmcmail@pm.me>

stat(3type) first appeared in POSIX.1-1988.[1]

[1] IEEE Std 1003.1-1988, Section 5.6.1 "File Characteristics: Header
and Data Structure".

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man3type/stat.3type | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man3type/stat.3type b/man/man3type/stat.3type
index 257f1c8d6b71..44d45b4a52b4 100644
--- a/man/man3type/stat.3type
+++ b/man/man3type/stat.3type
@@ -135,7 +135,7 @@ .SH DESCRIPTION
 .SH STANDARDS
 POSIX.1-2024.
 .SH HISTORY
-POSIX.1-2001.
+POSIX.1-1988.
 .P
 Old kernels and old standards did not support nanosecond timestamp fields.
 Instead, there were three timestamp fields
-- 
2.47.3


