Return-Path: <linux-man+bounces-507-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CCA1B86F6D2
	for <lists+linux-man@lfdr.de>; Sun,  3 Mar 2024 20:27:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 01B7B1C2105A
	for <lists+linux-man@lfdr.de>; Sun,  3 Mar 2024 19:27:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CD1176C68;
	Sun,  3 Mar 2024 19:27:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="c8OGujq0"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7709D43AB3
	for <linux-man@vger.kernel.org>; Sun,  3 Mar 2024 19:27:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709494050; cv=none; b=uZd7Khct5YwBACLR+8f6W21GXxYdrlhP47Rza+YcdDuwQVuyW2J0WFjtoB+90LKYWUkReybth5qrCj+a96xQ23AnFpY0OH/M4Roy4loc0Jgwaucs33eSelCv5r3ij9bPhWkKQWVLaINk1wxd51+l8cavq6V0mK1AzLWjgaVSZB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709494050; c=relaxed/simple;
	bh=Mhvl2X8K/nE4zfmTftB5fzP5iJSO6Gc0volZAcSrDaU=;
	h=MIME-Version:From:Date:Message-ID:Subject:Cc:Content-Type; b=I0ojIbxYgjpDptls36EtQcyEOqLKYEvXYZaHYBX9VUuM2KtJ34kruLrFVHUr5+olctmEzVBviOJd7jAlhQYO6tgWVMS6Fw7kKXYKBqs7L5aSNezjXLOWKX0CqDPvQstcgoVcr6oGj/llUwdQnf48jNu6Tgklz7t/zIT2B6JOQ3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=c8OGujq0; arc=none smtp.client-ip=209.85.160.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-42ee7fa077bso4177831cf.3
        for <linux-man@vger.kernel.org>; Sun, 03 Mar 2024 11:27:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709494048; x=1710098848; darn=vger.kernel.org;
        h=cc:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=f/VV4aoiWT7eyOv9xP8c2uNRctRG/FDWRvkhnXtLJSc=;
        b=c8OGujq00c0JMPJNHLwbJs0CKdl7VbsM95CeFgzgc5zOa79Rve+HBUwN3o3RReoNW1
         aPho6eU18ii7v4GNLWzaf8hpCUz0wDBxGCvEj/DLmsKd7JWGyeukGgiPatjUGLAlKkLo
         BPNceJVHKWIkqki6H+Wv7B4gOWAeqei5lS84p4HyK2U3PZJPAr8+pfQeApWh+zAd8s8d
         Xf5ifp5OG9WGhORwJthn0Evs2r6/40Nr5lyaUzz/8egXPDoIZvA1vmyUaK/aVh9DdXcq
         iZFHJoJ3WAnqF/i0oSvaN+qAcnKf00r6MNSZJ8ceEZZMXo4MDduiANpTLpBiBcLKmQMV
         uqHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709494048; x=1710098848;
        h=cc:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=f/VV4aoiWT7eyOv9xP8c2uNRctRG/FDWRvkhnXtLJSc=;
        b=hWOdo2TsdgKsSv3ixl6TNEJKbs0+yZ7m39rsQyMFNFndWJJOPKDijt41tVFZUpafg5
         rqfEcYYM0Tb395d0tr2Rv8z9B4ZPionK7dx5HEIzDgFonhS7kE7Yda9TAxWxFqbOY8v9
         fa9AbnJ8kx8OtE63syj7sYquOcMQgNgV5IdsuraP3W60OvGYqUS9eS9yGMB+tXcnduDg
         tAQ3TNq3SL1W10ptuQDmAwE1+joL5W9Wu0O+Fdr1icNpFw/YDUA6T/vnV+kKV9K8SUNT
         ukGgBTifr+Lt7K6apm4bNi/2eyBYiC+gmdT9T866tHCdwOwN1tP3f66lSjw4Ydeceyqk
         LNpA==
X-Gm-Message-State: AOJu0Yy2lMf/czREd2x5MoSIAra5cXzhv6rgrHfsWVxG09ri6UuxXq5B
	SqueUUeVyY6MhA+DD3kkAg6cKCMRFpW2X8+L54WnPOAuZMq6HahLikGqWbhrZN+RjT8JiPj0Tk3
	OXpXasFRBSpfmyiCwtD6UTRCKL39FVW7LKfk=
X-Google-Smtp-Source: AGHT+IET9NG2qNygcnq2KY1uqNi2bvbvDw7ZhzPa9E2VWywABLU3ffnWol1BPwm5zy/9OPG2imt/BWLXTvSKV2CCb7M=
X-Received: by 2002:ac8:5f10:0:b0:42e:d0c3:f86b with SMTP id
 x16-20020ac85f10000000b0042ed0c3f86bmr9847029qta.48.1709494048265; Sun, 03
 Mar 2024 11:27:28 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: =?UTF-8?B?TGlsaSBQw7xzcMO2aw==?= <poordirtylili@gmail.com>
Date: Sun, 3 Mar 2024 20:27:17 +0100
Message-ID: <CALPhBBbmrAMR70WT-JfKoSQVLhfxKv5B68Gyo_4zZRY-7SS0-g@mail.gmail.com>
Subject: patch - fixing sample program in unix.7
Cc: linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

diff --git a/man7/unix.7 b/man7/unix.7
index cb1dcae45..7fb41af99 100644
--- a/man7/unix.7
+++ b/man7/unix.7
@@ -1057,7 +1057,7 @@ main(int argc, char *argv[])
\&
            if (!strncmp(buffer, "DOWN", sizeof(buffer))) {
                down_flag = 1;
-                break;
+                continue;
            }
\&
            if (!strncmp(buffer, "END", sizeof(buffer))) {

