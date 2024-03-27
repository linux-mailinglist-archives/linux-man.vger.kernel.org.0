Return-Path: <linux-man+bounces-700-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B89488EF1A
	for <lists+linux-man@lfdr.de>; Wed, 27 Mar 2024 20:20:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5658129C4C9
	for <lists+linux-man@lfdr.de>; Wed, 27 Mar 2024 19:20:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18CDE14F11F;
	Wed, 27 Mar 2024 19:20:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RSTBdIha"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oa1-f44.google.com (mail-oa1-f44.google.com [209.85.160.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8860814D280
	for <linux-man@vger.kernel.org>; Wed, 27 Mar 2024 19:20:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711567228; cv=none; b=H1jO0QTgixbpg05KDFtBJBgyTMU2B+0FsA+yS77U1lwA9bjtEJa/37rZ5SMNe06cwpxFaEuQ1r3KYlP8MrlXNqhuEiUDhlFmZvuUkzxosPMFk9FE4WG7I5GGeWbYDw8yPKP4Dl3t86Lk/vbsDWN5/msqsy1bQR7YlfbI5YnKacM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711567228; c=relaxed/simple;
	bh=xKP1nkh7hbEvNXGBnFvdVyYYRTcI4CFzwbAPYmdhl2M=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=iCnd99oau1JHhcCPxZ0j9DR9A9+h6jPDky1hFHeNivYP6pZp+j497RGdbfAwI9SMAbrXcYJiJLLh0xjDc+2x23vY7kCyoYI9I5S016Uqsl7FMVPeGMr+7FMUT6evyw0BdilmHXF5dyZi3gDhQJDcvrWSEPIcFk9iHksYYJXMLYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RSTBdIha; arc=none smtp.client-ip=209.85.160.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-229661f57cbso121882fac.1
        for <linux-man@vger.kernel.org>; Wed, 27 Mar 2024 12:20:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711567226; x=1712172026; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=msT5IePO/sbV4Urea3I9J+rzeydrhhNA2hiKC1JQz4s=;
        b=RSTBdIhaR/1+yppbbjEZLxGLV4RxzdYErmMfvppzF4C1kQDUlMq8EQLBsDAHqYSeZE
         5px3v+vXwiAmZsbFbF/cd2ZuKQj0ERIJklaSO4OAiEso3PzE01ygMItGNIE0NltWSXIS
         NvU+gEWSj23K0ET1KbhLUTPVXuCiomy96axvf28uvo362Vl4nAOKAC0iS3tlAyk3ZcbS
         a/alBaKhX+pVzZJ6nWVTYPs9OvZy9nOV2a0tvFzjorTv0gw/SDGUfY6Jo87sHFzwE3Yf
         3jkMnICgHMrCnVnfUl6tzQ1IIdY1loA/GQtBT2bA0AtcVtZ9QOaFjWxp/uNgLmI/q/Dr
         Ud9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711567226; x=1712172026;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=msT5IePO/sbV4Urea3I9J+rzeydrhhNA2hiKC1JQz4s=;
        b=xIvQ48/Mo2iEhwK+QHUV+UU1RpKYXRnHIrPzHzCum5dDTa28ZAJlZ2A11/1Q+SETY+
         eUoZZxGqk/pht7iHmXBGZBjfzbj3tKfJKeflz4AzyANW+CW6sfTAiq0gUT/A/Nbtp3HA
         g036SpYTxGzwuI7/r9ycmgmUIQgqyeizx/iIIYxlpwqoJ+zSgeEYcEgFnml8twHXX/9T
         IHALAV9HJO5Y7ev52EmJmk/5Kw78ojszNobrF96xybSc1Sqn3+FjR2huZE07ya5a5pgP
         xQgPjWgO1bhidzabwhskef4PRBz7TKG92umIQRKJrl6lyEwaqdT2vWVlbWlHARNJ3Br6
         42gg==
X-Gm-Message-State: AOJu0Yz7+PJO1jdayockli1XmtraFYUxGlBAFcPQfMMnm0sXOiDoUw1X
	fgAA+rAvn18g3xHS/DMdaFoCaz1xWlUCqn26CZ5xQrVfqewGRbUy4FPTVy7IBRs2v+sk3aBEjxc
	6aKHg8GUR0JRjUWsPYoW4l6r+B7VViGtZGmg=
X-Google-Smtp-Source: AGHT+IG36IjCrCDLDsr5dhTatTOPItrJ7eGoWJLjrtpmYJOIiDpfV6U0w7EK8J0EjbT9qWl56iccbXHZOY/84Qe/oy4=
X-Received: by 2002:a05:6871:8ab:b0:22a:9d7a:3f4f with SMTP id
 r43-20020a05687108ab00b0022a9d7a3f4fmr430571oaq.16.1711567226448; Wed, 27 Mar
 2024 12:20:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAJ_gjBp=_zdy3p3HdWSDD9XHexfNznhwSSCkASe-c71FHA99wg@mail.gmail.com>
 <ZfTnYiGBuXUDzWzG@debian>
In-Reply-To: <ZfTnYiGBuXUDzWzG@debian>
From: Fedor Lapshin <fe.lap.prog@gmail.com>
Date: Wed, 27 Mar 2024 22:20:16 +0300
Message-ID: <CAJ_gjBrWz69eoo1_eGMXZOwY5+_=rPesmD80GFZRKYhH=8wH7A@mail.gmail.com>
Subject: [PATCH] getgrouplist.3: EXAMPLES: fix error handling for getpwnam(3)
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Signed-off-by: Fedor Lapshin <fe.lap.prog@gmail.com>
---
 man3/getgrouplist.3 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man3/getgrouplist.3 b/man3/getgrouplist.3
index 41389b6c3..cf23dfa78 100644
--- a/man3/getgrouplist.3
+++ b/man3/getgrouplist.3
@@ -162,10 +162,11 @@ main(int argc, char *argv[])
 \&
     /* Fetch passwd structure (contains first group ID for user). */
 \&
+    errno = 0;
     pw = getpwnam(argv[1]);
     if (pw == NULL) {
         perror("getpwnam");
-        exit(EXIT_SUCCESS);
+        exit(EXIT_FAILURE);
     }
 \&
     /* Retrieve group list. */
--
2.34.1

