Return-Path: <linux-man+bounces-316-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B7ED281FCBA
	for <lists+linux-man@lfdr.de>; Fri, 29 Dec 2023 04:20:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1CAFA28554C
	for <lists+linux-man@lfdr.de>; Fri, 29 Dec 2023 03:20:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99E0117E2;
	Fri, 29 Dec 2023 03:20:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MN9F09VW"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9285E17D1
	for <linux-man@vger.kernel.org>; Fri, 29 Dec 2023 03:20:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a23350cd51cso740736766b.2
        for <linux-man@vger.kernel.org>; Thu, 28 Dec 2023 19:20:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703820043; x=1704424843; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+BxKqpvbR8YpXwTgxxFgvAft329AOh134ocRm7rW7gE=;
        b=MN9F09VWPBrwF1uQQmp9uLsNnr+zcLTwYxLAEoUadXSyFjF+jWYdG9h88x/8YfvFuE
         ynhcPw+T6ChQbAlwMXf57TJa0og0c1ofKSkMcIAhmQezg1IzCfUxTCWGsa8A0DMsHbn0
         8ZCWGhKJpMNFNgSOL+5uuj8hoqchkGokN60j+ADj85cquKPWk1NgR7SZNWHXPU/itnOo
         nSFFe+iOZ2AdH5f/b9TjQ4gqUKHZ52JYOGM9yYo81sX6S3W31iax6+WBuXFdHM7iXumI
         dblqBSAErCuPRO78UWSqnxFesf53ePZfKwiwQckqpjstrkMDhi91wqMO5MPevQXm8WKl
         bi1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703820043; x=1704424843;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+BxKqpvbR8YpXwTgxxFgvAft329AOh134ocRm7rW7gE=;
        b=pMf6EZrAOiqJtKWjRwLuNOLMH651KvI/927Qd+4OyLk4jbdP6MQ9YG123pxC9QLZjB
         vOq2CifbQxbF3RdrcdFrVCRDHJdmkuwCC75d98oiL9sBbysN/VTsg+LZ0yG+FuARv8p1
         oPyeRZEi8ijqXLgP4GMdKecevviS7OA6yYfvK3sY3gmXvmjrnE1FoTFY6gbPPMfjzDlC
         aw2VfYirFGyINcMKVQeszzUweqcYM5vIIKG0FawJ4HJRskmnqOs67HfcHfo8s54ejoX4
         a5O+fV1Z/u09fCXofv/3hZfFLVKN4sM5wVculCQ16UWkSt7gVSbB0tFRA6HG5cl8GsyQ
         GvVA==
X-Gm-Message-State: AOJu0Yyw7Vn2Dfj0eCa0C+wyNeuO32f3GMxfH+5xT51H+20DW9j+ZTJG
	+ye3c5rmonJd04gSpIfIkp9ldZBTvLhRAjaVVqu2y5tkGaZ93no=
X-Google-Smtp-Source: AGHT+IG/cN/Ifod2DL1btwiAZcVp2LgfNbu+zg1SNZ76CL/wGVloDQjC2MiuhMQqT5f5IqyDf64EzqKMQi2GnsA3mFs=
X-Received: by 2002:a17:906:5f8a:b0:a26:a877:f326 with SMTP id
 a10-20020a1709065f8a00b00a26a877f326mr5297968eju.102.1703820042528; Thu, 28
 Dec 2023 19:20:42 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231228155601.16558-1-r.pandian@gmail.com> <ZY35_ukf-q9--X-7@posteo.de>
In-Reply-To: <ZY35_ukf-q9--X-7@posteo.de>
From: rajesh <r.pandian@gmail.com>
Date: Fri, 29 Dec 2023 08:49:07 +0530
Message-ID: <CAKkEDkUEBLbjY-281DWw_0krt_AbGiHvwpHZVu_gxzQKGunL5w@mail.gmail.com>
Subject: Re: [PATCH] bugzilla_218018
To: Tom Schwindl <schwindl@posteo.de>
Cc: alx@kernel.org, linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Thanks for the feedback.  Have sent it with the subject  [PATCH]
bugzilla_218018_v1

On Fri, 29 Dec 2023 at 04:13, Tom Schwindl <schwindl@posteo.de> wrote:
>
> Hi,
>
> On Thu, Dec 28, 2023 at 09:26:01PM +0530, Rajesh Pandian wrote:
> > ---
> >  man3/dl_iterate_phdr.3 | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> >
> > diff --git a/man3/dl_iterate_phdr.3 b/man3/dl_iterate_phdr.3
> > index 0a8beb3ae..f47fdd502 100644
> > --- a/man3/dl_iterate_phdr.3
> > +++ b/man3/dl_iterate_phdr.3
> > @@ -129,7 +129,9 @@ The
> >  .I dlpi_phnum
> >  field indicates the size of this array.
> >  .P
> > -These program headers are structures of the following form:
> > +The ELF program header is described by the type Elf32_Phdr
> > +or Elf64_Phdr depending on the architecture.
> > +Following is an example of 32 bit architecture:
>
> I'd slightly change the last sentence to
>
>   The following is an example of the 32-bit architecture
>
> since that sounds a bit nicer IMO.
>
> >  .P
> >  .in +4n
> >  .EX
> > --
> > 2.39.2
> >
> >
>
> --
> Kind Regards,
> Tom Schwindl

