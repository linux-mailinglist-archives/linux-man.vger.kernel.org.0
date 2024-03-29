Return-Path: <linux-man+bounces-705-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E7022890F1B
	for <lists+linux-man@lfdr.de>; Fri, 29 Mar 2024 01:21:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9ABFD1F23361
	for <lists+linux-man@lfdr.de>; Fri, 29 Mar 2024 00:21:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F2BEA35;
	Fri, 29 Mar 2024 00:21:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kx+soqet"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oa1-f52.google.com (mail-oa1-f52.google.com [209.85.160.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E556DF9CC
	for <linux-man@vger.kernel.org>; Fri, 29 Mar 2024 00:21:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711671685; cv=none; b=OnLwyrOk53JPoloRPAMEBSZCnfE81uiHT10XTpWjEfu1Yqfjt3Ry80neTEo+szMscAnpOk/0vPGCrq43Vqg7u35NGg8FoxGxt3RXZZ8rAd+JSj0/nlQvtwnSsOJIMyuYXeWvrT51WkF2ssfTDwV4ulJ+XGhQPOG9Z0yMbH+Wsfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711671685; c=relaxed/simple;
	bh=I8jKZDwYs1oTFpAfjI6nM+NCjrSyowhnFnsU+s5r1Nw=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Cc:Content-Type; b=XXOQXXF32uc7ajBgOkQ1kcQ5VgsJzM6tVX1khJjsCvLU4uqW4CkIG2PSKasqiATzec8dxdQ5feuKJ+n6oVpFOHyMjfyU3m0ogqfi62s+X+H9mOermiMD+vZlf8dESRWrkmCJgsmHoWGgUvfmqjnUcpp3wYGG0EGvJwJ9Miv81GQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kx+soqet; arc=none smtp.client-ip=209.85.160.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f52.google.com with SMTP id 586e51a60fabf-22a353217c3so802688fac.1
        for <linux-man@vger.kernel.org>; Thu, 28 Mar 2024 17:21:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711671683; x=1712276483; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=qTUPtEUHoree9op7SmanAxopTYLUTsZIQ5SxlTecSTo=;
        b=kx+soqet8UXZQFBOGrqxw7m/LK3wFRAXH2wvPazYAP+5hK+dYY2qeH5ab4AxAgWweF
         mKlJ20tdwyf18WHIGDexFXsntyfnbU47/hGJk4wKtlGcezoFalEfgtx0cZF5gA9a2/MM
         tM3vlF1r5c/jC6Eky+qa1uLiu0X4yLw8QLkDse/d8KEDzEagJDWM6y6fw9Xc8ICj5Nlb
         IY31yfSKvtaqJJK5fxhZbl9iZmn7YnW1sU+Rl3PIOvZCUGnh0JOOg39u8Ru5ruqS4lgs
         yaWw/agXOScLIeEWpK9BJPHaBWTgaqWLroEFrYoBGdlF9wlvCgeht8QYy71nvPIEKhBg
         gU0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711671683; x=1712276483;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qTUPtEUHoree9op7SmanAxopTYLUTsZIQ5SxlTecSTo=;
        b=cIHIY/PrsobpbNrOZM+N8M8zvhbikUq/6/AcBdw1U9l71LzacNX+g4+GQIWpJseNcc
         0jvGenFxafFnI6NWFNCgQP+jYrvLKOtRQc7nAa++OZRGn5kkq9gw5LTzw7RqoaiMO5RL
         TP50NOn3ClhB1SdOelqnKi3XUrthkNhmJ3VqeePM8Cj5905dhbf2AJV5B1RQ32ovqrvj
         HrL946I7PROVd9tqnv4IPl4kOoZQwyiu412a/VgAkl9u99TmKFOgAcvTZC/39h4R5SZN
         nmFDuuii82laZbOmDMFk/l/BpvqXOj9nqELeCmqcXdn84m24oBVAAjD0w04kJDOgRe9g
         N5Ww==
X-Gm-Message-State: AOJu0YwRYbI6c4UdHB2PUGm6bXXgzvae1eZrDCwxLcaEUT5TvN2cmXka
	24WiPw9R4GB+0YJC63JswUqBvTut8S/2OeYcY9+fzvblnzpHUYDTWRZ2KFxoSTNxvr8WaAtyHWB
	RPIFW8LCs1Phnr6ZUZHf/GsQ4XM0=
X-Google-Smtp-Source: AGHT+IFO5OeXmGdx/iQNcyeaH+WVTE7nWnr4A4VvZZymRUaK8n9hhkDT7+DzyZmTBjj5Y38p3k6SO0PCcw7Tles7Nn4=
X-Received: by 2002:a05:6871:5b28:b0:21e:b50c:3e8e with SMTP id
 op40-20020a0568715b2800b0021eb50c3e8emr817804oac.56.1711671682969; Thu, 28
 Mar 2024 17:21:22 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Fedor Lapshin <fe.lap.prog@gmail.com>
Date: Fri, 29 Mar 2024 03:21:11 +0300
Message-ID: <CAJ_gjBoqD2mWoJF0QH7YB=Z0Wy00XFO2yRJ0VQDxPmp3niisYg@mail.gmail.com>
Subject: [PATCH] getgrouplist.3: EXAMPLES: improve error handling for getpwnam(3)
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Signed-off-by: Fedor Lapshin <fe.lap.prog@gmail.com>
---
 man3/getgrouplist.3 | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/man3/getgrouplist.3 b/man3/getgrouplist.3
index 41389b6c3..e2e640d56 100644
--- a/man3/getgrouplist.3
+++ b/man3/getgrouplist.3
@@ -162,10 +162,12 @@ main(int argc, char *argv[])
 \&
     /* Fetch passwd structure (contains first group ID for user). */
 \&
+    errno = 0;
     pw = getpwnam(argv[1]);
     if (pw == NULL) {
-        perror("getpwnam");
-        exit(EXIT_SUCCESS);
+        if (errno) perror("getpwnam");
+        else fprintf(stderr, "no such user\en");
+        exit(EXIT_FAILURE);
     }
 \&
     /* Retrieve group list. */
--
2.34.1

