Return-Path: <linux-man+bounces-320-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2886682000C
	for <lists+linux-man@lfdr.de>; Fri, 29 Dec 2023 15:56:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D345A284572
	for <lists+linux-man@lfdr.de>; Fri, 29 Dec 2023 14:56:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5638E11C91;
	Fri, 29 Dec 2023 14:56:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="md4o6RwB"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96D0811C8E
	for <linux-man@vger.kernel.org>; Fri, 29 Dec 2023 14:56:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-50e835800adso3130228e87.0
        for <linux-man@vger.kernel.org>; Fri, 29 Dec 2023 06:56:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703861769; x=1704466569; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bb8mzNxX/TBEXcJijBoWPyCmRuU3vtvNRTd3yGi7QbY=;
        b=md4o6RwB4AHM55cfp+MrwkUaHHz3R/wbMGFir49LWct/IuWkEHVtVyzV+SfnGdDsL6
         QTLGWuBGoUaNPsZdX9OdW3ZGQw4flXvGy8WaWgFNwIWSs9aY5z07Mu9tXTImYJKUrVXm
         1JrXBFSGN4Q9Fal2EySHl9QMzDwKuF6i8FF95KJhbR00eVzkQQEG+ul14rEoyoJHcfq4
         St2cuGh57clplbmRF3tZO8npICzVRNYiri6sdvvolamD8ngOVG63OpxMz7QYggxVkPjW
         yYAD6r2YW9+o10oUmbFnVaaTJFRk02vJMPX4ZZe79eWbnnGOy8ngw74lKcZJ+2GfR+9c
         YMJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703861769; x=1704466569;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bb8mzNxX/TBEXcJijBoWPyCmRuU3vtvNRTd3yGi7QbY=;
        b=k+aw6IaKr2zzOv0soNLXCdIxVP9z4iDbyre5xL+Ce1pmNN9xTuz+QTcUIPaydMt4Tb
         tJ2j4zTZ718Wr1r5yr4pvdoJDKoVZAuxlK9Ws9Br1qzE1b/UseNV6mjkX/CsldctMVut
         wFAfqsDbloIqvSju34snto5Ah+eiNSJ+vkjIyj1Yi5+6/siwVNNctBn9vO0G13QnLjgh
         WsImrFDQNqRUWO0m3oEcULJmNpsEhOFyR9GjdahiZ24mRJ5IilJS4ycTzSebuUZdzTxZ
         MC6NynUlrfmpdiaMpFZ4F+JoV466kx9sNn1wM1MS6Fe6ocnVl7+7dA8c4o+P++daurut
         TeZQ==
X-Gm-Message-State: AOJu0YyOZF366H57SzOdI1YyhHS3LHYLSS8U7xvY0y7o8V3rPEGK8D77
	GcXFm5XDehAQBWTfT0Uj62WYG7sC7O0uCXbX7g==
X-Google-Smtp-Source: AGHT+IHXB56IrUhvtcg6xQ5xRlgv+SfT3A2WGRv+xUTYfen7Dy4C2y3Rzxfl0Lb/YQ3oPxdZUpDikVJhlHorgpbno34=
X-Received: by 2002:a05:6512:6cd:b0:50e:7f56:c68c with SMTP id
 u13-20020a05651206cd00b0050e7f56c68cmr2101378lff.98.1703861769280; Fri, 29
 Dec 2023 06:56:09 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231229031816.3345-1-r.pandian@gmail.com> <CACKs7VBsUmK9Vo-LK=OHPMQa7gAMYxj9eHVNRKGid9jHkiq1mg@mail.gmail.com>
In-Reply-To: <CACKs7VBsUmK9Vo-LK=OHPMQa7gAMYxj9eHVNRKGid9jHkiq1mg@mail.gmail.com>
From: rajesh <r.pandian@gmail.com>
Date: Fri, 29 Dec 2023 20:25:32 +0530
Message-ID: <CAKkEDkVqj0nPgX6_YF_t6xcL3_9fe7Rw3nZo=4EphHCfdfujjQ@mail.gmail.com>
Subject: Re: [PATCH] bugzilla_218018_v1
To: Stefan Puiu <stefan.puiu@gmail.com>
Cc: alx@kernel.org, linux-man@vger.kernel.org, schwindl@posteo.de
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for the feedback. Sounds good. I'll send a patch later.

On Fri, 29 Dec 2023 at 18:44, Stefan Puiu <stefan.puiu@gmail.com> wrote:
>
> Hi Rajesh,
>
> 2 small nits below.
>
> On Fri, Dec 29, 2023 at 5:19=E2=80=AFAM Rajesh Pandian <r.pandian@gmail.c=
om> wrote:
> >
> > ---
> >  man3/dl_iterate_phdr.3 | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> >
> > diff --git a/man3/dl_iterate_phdr.3 b/man3/dl_iterate_phdr.3
> > index 0a8beb3ae..1355c5bcc 100644
> > --- a/man3/dl_iterate_phdr.3
> > +++ b/man3/dl_iterate_phdr.3
> > @@ -129,7 +129,9 @@ The
> >  .I dlpi_phnum
> >  field indicates the size of this array.
> >  .P
> > -These program headers are structures of the following form:
> > +The ELF program header is described by the type Elf32_Phdr
> > +or Elf64_Phdr depending on the architecture.
>
> I think "is described by the Elf32_Phdr or Elf64_Phdr type,
> depending..." sounds better here.
>
> > +The following is an example of the 32-bit architecture:
>
> How about "The following layout applies to 32-bit architectures:"?
>
> Thanks,
> Stefan.
>
> >  .P
> >  .in +4n
> >  .EX
> > --
> > 2.39.2
> >
> >

