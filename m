Return-Path: <linux-man+bounces-4259-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 98B2EC3B312
	for <lists+linux-man@lfdr.de>; Thu, 06 Nov 2025 14:25:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 97072426DA9
	for <lists+linux-man@lfdr.de>; Thu,  6 Nov 2025 13:13:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B12832AAD8;
	Thu,  6 Nov 2025 13:13:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (4096-bit key) header.d=aegee.org header.i=dkim+MSA-tls@aegee.org header.b="agO0Cp14"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.aegee.org (mail.aegee.org [144.76.142.78])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC4932D426
	for <linux-man@vger.kernel.org>; Thu,  6 Nov 2025 13:13:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=144.76.142.78
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762434797; cv=none; b=T05C0HFEmxyWH99UvmKIh3ByhANzwl0Drm1eQryXNS6lKl39NfxCBMHRwZdcsEzZs++UkKU6r2pwHM2emyU9aHrcamVn2y8L7r9aDGMoxoexH4uhlSwT23ndfPYxm+2fCaA43A3VjosJiuhkyajoKank2DQ+cR6DVqiRNYqB8x0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762434797; c=relaxed/simple;
	bh=aYe0cRR0Ktdkn379W2MlpwktUWHCTSLEq/npBp9pn74=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=RgfeZTJvkQ+uW6KKAWF5bON/XdAQW7GN2CtL2YOOQvRv+C+v2ONiY6/cs4F17E4y7NR7bkU1PT8DPvvrBjWolJiAUvC/8aqfc7BrjwPiy7wmJz0DpxZFHUNYOtm2dfKwdvLYoXuXJNdDo/B5kSVPLd1+S0qTdyqD8OqlhmFw5mY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=aegee.org; spf=pass smtp.mailfrom=aegee.org; dkim=pass (4096-bit key) header.d=aegee.org header.i=dkim+MSA-tls@aegee.org header.b=agO0Cp14; arc=none smtp.client-ip=144.76.142.78
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=aegee.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aegee.org
Authentication-Results: mail.aegee.org/5A6DCcqW3551271; auth=pass (PLAIN) smtp.auth=didopalauzov@aegee.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aegee.org; s=k4096;
	t=1762434760; i=dkim+MSA-tls@aegee.org;
	bh=aYe0cRR0Ktdkn379W2MlpwktUWHCTSLEq/npBp9pn74=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=agO0Cp14lhrFJmck8kOCntOjfOOuDKTjIas8iv/ExOkp3l+jA96XGhlr1XopLRvCy
	 O35mXSY7AwVlytMoAUZ+r4RCSY+b+NnhNiLXCm2NVGdiKKMrJUuN3zqb2e8Kn3zA34
	 EyApRIA9Rg+em03YzwfmDo7UcatUj5g1Lltff9R2T0BYnrLt1hyv6iVvNq3ON5+S18
	 HcU9/5zssTOAQTgNodOJDKpVRQ6VKyjheRDIF1MxuxQKYrKD7TnU/X7kMN6c2ccbnG
	 M8SSMCGH7t/kgHNeqySzINbXWlMco9FlaCac71Bin5zt6EVh1igVPkLHevcbUJXXyb
	 um8/AqRlTJgSUMLDhfS2EP80YPRARwRd3BHkfpLtU+sf9B/DWqWdgQA3EvGHRfcQr6
	 lj2Jjwi2XQLaqmuzW4upXfN4PsyRE0nQ246xmtQOs4Jg2PFls0a3BpOykoMcefgPWC
	 vPzEXhNFjXx+iyFC42SmJFAaNOmwNwgo+kr2Rz+vYiTf3FMHHsyO/5My32jUEwajJt
	 p46JpQQ4/7omRXSZYTh7V3Y9UmyKC53YU6Aqd6quqBCg3S3jC5nmKUbQfYJubhT4P5
	 XZ0/7YiVeHqKzKM8Ktg7iqHLZcHqXhyla3en0sZ+siZa/IxPG8qf8ExDn1p1khCHMt
	 DUsqr+3yFUoRrkMD/dvhoLdE=
Authentication-Results: mail.aegee.org/5A6DCcqW3551271; dkim=none
Received: from [192.168.0.242] (95-43-114-153.ip.btc-net.bg [95.43.114.153])
	(authenticated bits=0)
	by mail.aegee.org (8.18.1/8.18.1) with ESMTPSA id 5A6DCcqW3551271
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Thu, 6 Nov 2025 13:12:39 GMT
Message-ID: <21db502ebcad7a7f5b64a94ffd2235997a4574fb.camel@aegee.org>
Subject: Re: tcgetattr() can set errno to 22 / EINVAL
From: =?UTF-8?Q?=D0=94=D0=B8=D0=BB=D1=8F=D0=BD_?=
 =?UTF-8?Q?=D0=9F=D0=B0=D0=BB=D0=B0=D1=83=D0=B7=D0=BE=D0=B2?=
	 <dilyan.palauzov@aegee.org>
To: Florian Weimer <fweimer@redhat.com>, Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Date: Thu, 06 Nov 2025 15:12:38 +0200
In-Reply-To: <lhums4zgwtn.fsf@oldenburg.str.redhat.com>
References: <ebb992217f4a2ceca9a6d9868f50da73c68e8cdb.camel@aegee.org>
		<dsb6oiv7q7ra3gbu4bovy3gah522lgsf3d6h3wxwe4ieuka6fh@g6u5qzlyoxf5>
	 <lhums4zgwtn.fsf@oldenburg.str.redhat.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.59.1 
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hello,

all I can do is to write at=C2=A0linux-input@vger.kernel.org : https://lore=
.kernel.org/linux-input/24eaed9105633d03eded13e11c5a994bd93a81aa.camel@aege=
e.org/ .

Writing a report in the Austing Group Mantis BT, requires an answer from th=
e chair, that an account is created.

> According to Andreas Schwab, it's a bug in the device driver
=E2=80=A6 at https://sourceware.org/bugzilla/show_bug.cgi?id=3D33597 .

Greetings // =D0=94=D0=B8=D0=BB=D1=8F=D0=BD

-----Original Message-----
From: Florian Weimer <fweimer@redhat.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: =D0=94=D0=B8=D0=BB=D1=8F=D0=BD =D0=9F=D0=B0=D0=BB=D0=B0=D1=83=D0=B7=D0=
=BE=D0=B2 <dilyan.palauzov@aegee.org>, linux-man@vger.kernel.org
Subject: Re: tcgetattr() can set errno to 22 / EINVAL
Date: 06/11/25 14:38:44

* Alejandro Colomar:

> On Mon, Nov 03, 2025 at 02:45:06PM +0200, =D0=94=D0=B8=D0=BB=D1=8F=D0=BD =
=D0=9F=D0=B0=D0=BB=D0=B0=D1=83=D0=B7=D0=BE=D0=B2 wrote:
>> Hello,
>>=20
>> please amend the errors at https://man7.org/linux/man-pages/man3/tcgetat=
tr.3p.html=C2=A0that the function tcgetattr() can set errno to EINVAL 22 In=
valid argument for /dev/hidraw files.
>
> You should file a bug to the Austin Group, which is the group
> responsible for the POSIX standard.

According to Andreas Schwab, it's a bug in the device driver.

Thanks,
Florian


