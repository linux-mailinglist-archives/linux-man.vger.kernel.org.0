Return-Path: <linux-man+bounces-232-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E4C498079D8
	for <lists+linux-man@lfdr.de>; Wed,  6 Dec 2023 21:54:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 201911C20FF2
	for <lists+linux-man@lfdr.de>; Wed,  6 Dec 2023 20:54:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 397B74186D;
	Wed,  6 Dec 2023 20:54:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Uk8w/W4H"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-x1132.google.com (mail-yw1-x1132.google.com [IPv6:2607:f8b0:4864:20::1132])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C50ED6F
	for <linux-man@vger.kernel.org>; Wed,  6 Dec 2023 12:54:35 -0800 (PST)
Received: by mail-yw1-x1132.google.com with SMTP id 00721157ae682-5d8a772157fso1949567b3.3
        for <linux-man@vger.kernel.org>; Wed, 06 Dec 2023 12:54:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701896074; x=1702500874; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BZI0zYJkd+wDn7KNdNoYDirwRPRk64JGhQ6/2Cm1Jck=;
        b=Uk8w/W4H4+89ZxL9g98quolbj1hoSXyFRrHw5wic/EEtWQ+2tUORg2NCHN9HKGJD36
         qyR7aM6kQkKm8cD8g7r4GBSh3l7DjLT+sSb43Sj+yRE9H9eG7Lbdeizn83adCvjV8qjg
         qK3dLajnORsCY7A2bUrwklC9LmmdhbhUSr1qgXVottIb33TaWgK3MXLg5rcDabcuf1Ig
         PRNH8fUvc0/wVQcHYBpqlmvYbaqy0+2qYOBiItAIsOHMU8r5AE1uUUY5y2j73iDu3VKC
         tctKsQhdkqoWjqUIGq1qSMiD6k9ncydLEEPzscX+DfdZPHDX1u1DpCbYbji2S8wTNSim
         4RuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701896074; x=1702500874;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BZI0zYJkd+wDn7KNdNoYDirwRPRk64JGhQ6/2Cm1Jck=;
        b=fZk7mhSRBWZg3/vIN3ho0Jx63xkqLkKVl7pY3Nkx2VxHBfCEASyNUZIFQjZDIjcoEM
         cE4iY1VZLYYwrJ1zhPafwaaXwh9bCmEwcuRg2CFvl7jfZh10Ye18eWjqj+vXRqMLSkQM
         VG01TBAN4tWYf1l1OKcqm9NPC3sqJbp1xp9FuY2KLGNiBNmTb2tgvXYbaZzNN0m93UuN
         zTRSW2KcXtE582tvJ+Ic7DqrDGJMjvf4EAwpzWTKJd0uSywGv6Q31c0UNdqSBfo676IF
         Z9kdv+X05zBglBiRIEZLxYboXX97T7VJDIZOzmLdIaBP/VwJYX6h/hh55nVsQmjTJ/CE
         UMQw==
X-Gm-Message-State: AOJu0Yzf0W8xIQJRMtgwhS9Y8jTfqVHo6vHjAy9Q/4w2wRjO/9yR3x0B
	DnQt57hc1gmH9Pr6Y6IgJ1c=
X-Google-Smtp-Source: AGHT+IHb2sTj8UpQO21QDm1+notOnSXuM8IzSzuX69WSZybjKwvrCfP0mLd7fKyHodI0VM1q1om2+w==
X-Received: by 2002:a0d:ec45:0:b0:5d3:b71b:e0c with SMTP id r5-20020a0dec45000000b005d3b71b0e0cmr1207652ywn.27.1701896074225;
        Wed, 06 Dec 2023 12:54:34 -0800 (PST)
Received: from firmament.. (h198-137-20-4.xnet.uga.edu. [198.137.20.4])
        by smtp.gmail.com with ESMTPSA id u206-20020a8160d7000000b00576c727498dsm231115ywb.92.2023.12.06.12.54.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Dec 2023 12:54:34 -0800 (PST)
From: Matthew House <mattlloydhouse@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man <linux-man@vger.kernel.org>,
	Zack Weinberg <zack@owlfolio.org>,
	Lee Griffiths <poddster@gmail.com>
Subject: Re: [PATCH] sscanf.3: Remove term 'deprecated', and expand BUGS
Date: Wed,  6 Dec 2023 15:54:25 -0500
Message-ID: <20231206205426.756947-1-mattlloydhouse@gmail.com>
In-Reply-To: <20231206204522.756572-1-mattlloydhouse@gmail.com>
References: <20231206145132.5538-2-alx@kernel.org> <ZXCjD5dP-jaUpeER@debian> <20231206183351.749567-1-mattlloydhouse@gmail.com> <ZXDXBngCYG11NsMZ@debian> <20231206204522.756572-1-mattlloydhouse@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 6, 2023 at 3:45 PM Matthew House <mattlloydhouse@gmail.com> wro=
te:
> The theoretical answer is that you can just replace (errno =3D=3D ERANGE)=
 with
> (errno !=3D 0), or just (errno), if you still don't care about distinguis=
hing
> a base error.

(And move the errno check up front, of course.)

