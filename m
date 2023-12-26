Return-Path: <linux-man+bounces-295-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D1CAF81E6BD
	for <lists+linux-man@lfdr.de>; Tue, 26 Dec 2023 10:54:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0EB4F1C20E06
	for <lists+linux-man@lfdr.de>; Tue, 26 Dec 2023 09:54:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6FB854D134;
	Tue, 26 Dec 2023 09:54:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fjeVfE/Z"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07ED44D12F
	for <linux-man@vger.kernel.org>; Tue, 26 Dec 2023 09:54:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-6dbbef36fe0so2444650a34.2
        for <linux-man@vger.kernel.org>; Tue, 26 Dec 2023 01:54:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703584444; x=1704189244; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:date:from
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0cs1pqQuZHcZHHdwTf13MT7JJW+YHEHfJ+YsqUupNKY=;
        b=fjeVfE/Z7sZR6E/IoIgII8QBGuE8po91cfLMxWi6G7TZSFz1JuhEpJrJ7pJn09oKMh
         XvoOtsOlvlPyRI7yEDLzzbeuls64jV7suSwkK9RHt9kNOS3jWh4Yi3bcUtc2qRhf6JvQ
         V+PMEqcAdkcOGcLoPQ3/NH1qCJI/lgyc+XegVx+Srxsz6uQgjyN0eqKfga9GfS4oxqHZ
         VJMhLdjcWp8AhTKs76RRuFTDfqmqscGsf/OY9uAakKLZchN5Xy1R/ufODljykZJ5EnHz
         77z+NNE8IaMncNIpZUwQoljFJCSO4Oz5ehysHNM30hnLq/ieU/j+bZyZwVy/9uI7wUQ7
         G6uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703584444; x=1704189244;
        h=content-disposition:mime-version:message-id:subject:cc:to:date:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0cs1pqQuZHcZHHdwTf13MT7JJW+YHEHfJ+YsqUupNKY=;
        b=qESSVp6lYzC9LrnE3HBhoDv1wGmc9G8O956nTWrHzzsJY8R2MrWFFpAJqYarsK8tBv
         SaHGuKS19P8+bix1Mp3J4igg7QZ0YCYVo+7T9djRqORl99YRJe/KRbBH7wtz7J/Rntjr
         UYbc/ozrBkfGwfdLu0CewSHAz/jEXhy2br3K8X9t6h6zPgMH275CA0YKWAJen8vdmZMS
         E9mrtRtCox4MSNSch7Y4I/3zlvkrC7CqzDoOaQuX5iZJAE85hlSX5mTk9pu35eUvQOYx
         WDMd540Yc5021jHfn2Hj4M6+rOrKOZ6Zb4LsAJO9wVtoHemU5REgVvjSzJU16DKx2i2v
         CzMQ==
X-Gm-Message-State: AOJu0Yw4H6kBlCCwWS18z2KaVVpNL/fhrVzpBh87Of9vFmVQOi4JxpLI
	3o8f94te1qJwSDmW5CVdlw==
X-Google-Smtp-Source: AGHT+IGb4mUnltRxrDLObHYLkz81uuKZrXPjzA8WqveKu5g4k4psc5Ci9lDVK9m2d5j74IoQj1DgVw==
X-Received: by 2002:a05:6358:7e56:b0:173:99b:d1db with SMTP id p22-20020a0563587e5600b00173099bd1dbmr5686074rwm.40.1703584443782;
        Tue, 26 Dec 2023 01:54:03 -0800 (PST)
Received: from localhost.localdomain ([122.174.192.11])
        by smtp.gmail.com with ESMTPSA id g12-20020a17090a578c00b0028c30432716sm5975175pji.15.2023.12.26.01.54.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Dec 2023 01:54:03 -0800 (PST)
From: Alejandro Colomar <r.pandian@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
Date: Tue, 26 Dec 2023 15:23:04 +0530
To: alx@kernel.org, r.pandian@gmail.com
Cc: linux-man@vger.kernel.org
Subject: [PATCH] : Fixing Bugzill ID 217709
Message-ID: <ZYqigLwks1bnwfIV@localhost.localdomain>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

The infrastructure of the list was recently modified.  Now, all the
information to subscribe, unsubscribe, or other actions, are in
<https://subspace.kernel.org/vger.kernel.org.html>.

Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 CONTRIBUTING | 16 +++-------------
 1 file changed, 3 insertions(+), 13 deletions(-)

diff --git a/CONTRIBUTING b/CONTRIBUTING
index bde085a63..ef531231d 100644
--- a/CONTRIBUTING
+++ b/CONTRIBUTING
@@ -42,19 +42,9 @@ Description
 
        Subscription:
              It is not necessary to subscribe to the list to send an
-             email.  If you want to subscribe to the list, send an email
-             to <majordomo@vger.kernel.org> containing the following
-             body:
-
-                 subscribe linux-man
-
-             Unsubscribing:
-
-                 unsubscribe linux-man
-
-             Help:
-
-                 help
+             email.  For subscribing to the list, or information about
+             it, go to
+             <https://subspace.kernel.org/vger.kernel.org.html>.
 
    Sign your emails with PGP
         We strongly encourage that you sign all of your emails sent to
-- 
2.39.2


