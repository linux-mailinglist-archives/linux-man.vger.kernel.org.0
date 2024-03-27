Return-Path: <linux-man+bounces-701-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E657288EF1B
	for <lists+linux-man@lfdr.de>; Wed, 27 Mar 2024 20:23:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9419B1F3109D
	for <lists+linux-man@lfdr.de>; Wed, 27 Mar 2024 19:23:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8546F14F134;
	Wed, 27 Mar 2024 19:23:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NVrIzFKP"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oa1-f41.google.com (mail-oa1-f41.google.com [209.85.160.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE3BD14F113
	for <linux-man@vger.kernel.org>; Wed, 27 Mar 2024 19:23:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711567413; cv=none; b=ra2tSrZVYCVC19EvNagNWa+dN3ryiU5tOa2aUr5+QN39d9p3ZndYFsFIYnNxwAUMMlL+aM6gzH6PXsV8wRb0Ur0IurpV66sZyLUvXFsV32SDXLESUeIbZF8OeW3x7q1m4up9f5A/ZlGD0V0r2VXCF4FRLvP7RhtbxmN6n/BV8WU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711567413; c=relaxed/simple;
	bh=xagY3W6NSYhIrthhYekMqoQYURCBHx1GQ4tOggotMWE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Jj5lflKXZ+SCyp7PRz6JzrsjArvqSP/gtzPVhipHN9uGAP8Ou8+Ulp1hhAYABwegNltCqgeE+RnpNvLs3uxHg3Ybbc06wtfONGo8Yp/BQxaUXHnWgCc5VYmfHYggn2hNxMrOZ86V3tvfwIDefEFDLVkn9UP/2uzaHhEI29FLccA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NVrIzFKP; arc=none smtp.client-ip=209.85.160.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f41.google.com with SMTP id 586e51a60fabf-229661f57cbso123595fac.1
        for <linux-man@vger.kernel.org>; Wed, 27 Mar 2024 12:23:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711567411; x=1712172211; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1Qo/gXGtw83vBc0fTO8WMFflmOnERAi8vJGB9WetoCU=;
        b=NVrIzFKPJBivTRYvkG5NcBE54Gsn6tk6iFhdPvJBnCOFMbYaDNhrq7KZRgkb+0NQqM
         j58GQuKhmaal05fSPNjsr3G/Py8RNwhs3ElalLFflGncv1xMbeH/G0D1cKda5zFNWYAB
         UEra29Jw9b12JqItNhGJU6QY8qSSEtJ7p3B1zdb/DpVNr/nBDtBEz2XYE+JIArSuvqd3
         vwj7LhmXhBnNjhdW/2gA/ucfONOh/6O1LPkCHr3hVaLL9Fg+5Zy9VdyCfHmUMtRVdKUq
         jCdrIICXqSX3oW+6alZHhhlbg5Sd7dMl4zf4SIAYHc/aqEqDl2VUEY7VI3okY0F2U9Ue
         8nuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711567411; x=1712172211;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1Qo/gXGtw83vBc0fTO8WMFflmOnERAi8vJGB9WetoCU=;
        b=HtFf1lwkFtRSwMo5FUpgato0NHf8xNte6C4NRxMi5PvuCLz7NUqZO1h7ifs5RECuxG
         0Gj/8+kKWvAF8azMBQQmqnm2bwwbCXxTFes1+HTnI3/aWvt6+porFSgqc7gFlVxNNl0s
         FXkUole1l/Ds77yRAdhfAVKruZq+6Tv0sVq0fg2XSn9QKaxR/JgnB6REv7zFMtZ9/cAI
         V3LWtX2ApY80z7y+JyRtr6E+Pb6cVeNDYwYhyWLyboXjTQXm/xSEebnydK5/wpiOuwWM
         1LXk2Rs7G4dDXDR1u/WpcTMjd5a5X6we7re1PXOSK8MedrLAoqkxs3D33CT0PZLo8P/L
         EqIQ==
X-Gm-Message-State: AOJu0Yxo3VwhsjoiqRBLG4ob6Wneg3KkWHIC8AvAgZX6vmkPgs+pTjtU
	L7Ldqkvmjy/K083jvDtGQkkztIBoOEIrirxoZ7CXjCG01Jz0cgBH7n433usgsHvK0fQfPLZmTGG
	Y3Aj2+YUfVEU1odhMnJNj8XHDnkdwZeoB
X-Google-Smtp-Source: AGHT+IE/KCBHU9qpJcagogBNiLOMxiGcVPOgkqQ28QFcgtTTes1+KmFpG5zSrcG8bAzPjt53kE+7ZkfL9pEgh7Q84J0=
X-Received: by 2002:a05:6870:1096:b0:22a:1036:4d86 with SMTP id
 22-20020a056870109600b0022a10364d86mr556912oaq.20.1711567411045; Wed, 27 Mar
 2024 12:23:31 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAJ_gjBp=_zdy3p3HdWSDD9XHexfNznhwSSCkASe-c71FHA99wg@mail.gmail.com>
 <ZfTnYiGBuXUDzWzG@debian> <CAJ_gjBrWz69eoo1_eGMXZOwY5+_=rPesmD80GFZRKYhH=8wH7A@mail.gmail.com>
In-Reply-To: <CAJ_gjBrWz69eoo1_eGMXZOwY5+_=rPesmD80GFZRKYhH=8wH7A@mail.gmail.com>
From: Fedor Lapshin <fe.lap.prog@gmail.com>
Date: Wed, 27 Mar 2024 22:23:21 +0300
Message-ID: <CAJ_gjBon2AS+j830RBe_FmvBtYqkiR8eQeLAz_+VfcmoPZh-2A@mail.gmail.com>
Subject: Re: [PATCH] getgrouplist.3: EXAMPLES: fix error handling for getpwnam(3)
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

So sorry for the email to your personal email without the cc!

=D1=81=D1=80, 27 =D0=BC=D0=B0=D1=80. 2024=E2=80=AF=D0=B3. =D0=B2 22:20, Fed=
or Lapshin <fe.lap.prog@gmail.com>:
>
> Signed-off-by: Fedor Lapshin <fe.lap.prog@gmail.com>
> ---
>  man3/getgrouplist.3 | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/man3/getgrouplist.3 b/man3/getgrouplist.3
> index 41389b6c3..cf23dfa78 100644
> --- a/man3/getgrouplist.3
> +++ b/man3/getgrouplist.3
> @@ -162,10 +162,11 @@ main(int argc, char *argv[])
>  \&
>      /* Fetch passwd structure (contains first group ID for user). */
>  \&
> +    errno =3D 0;
>      pw =3D getpwnam(argv[1]);
>      if (pw =3D=3D NULL) {
>          perror("getpwnam");
> -        exit(EXIT_SUCCESS);
> +        exit(EXIT_FAILURE);
>      }
>  \&
>      /* Retrieve group list. */
> --
> 2.34.1

