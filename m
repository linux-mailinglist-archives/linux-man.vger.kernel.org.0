Return-Path: <linux-man+bounces-317-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D95E81FF9D
	for <lists+linux-man@lfdr.de>; Fri, 29 Dec 2023 14:14:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2B40F1F229F9
	for <lists+linux-man@lfdr.de>; Fri, 29 Dec 2023 13:14:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A667C111B5;
	Fri, 29 Dec 2023 13:14:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bOVLRpXN"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 084A2111B1
	for <linux-man@vger.kernel.org>; Fri, 29 Dec 2023 13:14:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-40d5ae89c72so31626395e9.2
        for <linux-man@vger.kernel.org>; Fri, 29 Dec 2023 05:14:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703855667; x=1704460467; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ldNUerIiS5P1Cn7Z+3aB2KfuBaytLNRUJt8evyydr/4=;
        b=bOVLRpXNeDdu0rpCda2R9yy+v8ux1OJ+aUrrQRB3ih6DocSd1KF7XHob0UMlF+NK6t
         zY6LQ0oVZ3qywc0tDDO2Tq7Oq8fMiASo5QRlIYCTbpTNP38P/TNXdx4obcujqI8g5nYZ
         lGF3ev46eTZPlPFY2EmtiPd9NJDwXYEAeqhciUAfp1b08yfMTPKrxKhfEjCmT18LJqIc
         vNbj5yxJkDpMddmaLy8sze35OHEjOu61i/EshosKOZrevS/1xPG0LrZoUzyrPbhUFwCZ
         MSKQsFKW4RlcnQYVINkgtb8kERcSARR56ybIP3vj55NQtEXNqmav8YmaLujR5vQtRhte
         oG8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703855667; x=1704460467;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ldNUerIiS5P1Cn7Z+3aB2KfuBaytLNRUJt8evyydr/4=;
        b=co9vPQYbxe7MoS7ga/69u1yK537Qp1aWLnc3eTUjCCXInOKSfBrbrl9oQWBUzfX6DZ
         woY6S/AK7RW7r7KoQXI9bO6x9GAQA1R0q03py++tqUkIYkxk3xc89XoIxEPQ4OAqyI61
         h3pbLV2KMJGMpMLBp742nYT1yPFUQhwLPiag0X7V3Lzio0lySUzHhiIetA2Uawoa/grY
         YPDRPpJg32C7gvq1ql/gwVu2NXWNteyK0IeN7ZB9WH3lqx7t1w60WjPLNrR7qZihyTSZ
         ZRDSIu+N1NTOq0Xm+vQjDeBRyYGPJbznftXhyQIBQ8t/bGEVnNsIOckW4B/WWKTzomAD
         sP0w==
X-Gm-Message-State: AOJu0YyFlDRB+NHSfXCuE8yqyhjtn9Lr9SBEla1KCH/DX0mRxraP/53T
	vd1uR4IoZPf40QoDCIsm3BuAK5tTSWoiRURRO+jZeFbY
X-Google-Smtp-Source: AGHT+IFxvXwsXGKHAetshb+94DQSWMv8jBWRnafE7H9s9FmVYuO3eScfDfGt060Pz0pXaFh2DSys+/Cv5Z5oY4zKY8A=
X-Received: by 2002:a05:600c:5253:b0:40d:6058:c3d with SMTP id
 fc19-20020a05600c525300b0040d60580c3dmr1299712wmb.267.1703855666933; Fri, 29
 Dec 2023 05:14:26 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231229031816.3345-1-r.pandian@gmail.com>
In-Reply-To: <20231229031816.3345-1-r.pandian@gmail.com>
From: Stefan Puiu <stefan.puiu@gmail.com>
Date: Fri, 29 Dec 2023 15:14:15 +0200
Message-ID: <CACKs7VBsUmK9Vo-LK=OHPMQa7gAMYxj9eHVNRKGid9jHkiq1mg@mail.gmail.com>
Subject: Re: [PATCH] bugzilla_218018_v1
To: Rajesh Pandian <r.pandian@gmail.com>
Cc: alx@kernel.org, linux-man@vger.kernel.org, schwindl@posteo.de
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Rajesh,

2 small nits below.

On Fri, Dec 29, 2023 at 5:19=E2=80=AFAM Rajesh Pandian <r.pandian@gmail.com=
> wrote:
>
> ---
>  man3/dl_iterate_phdr.3 | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/man3/dl_iterate_phdr.3 b/man3/dl_iterate_phdr.3
> index 0a8beb3ae..1355c5bcc 100644
> --- a/man3/dl_iterate_phdr.3
> +++ b/man3/dl_iterate_phdr.3
> @@ -129,7 +129,9 @@ The
>  .I dlpi_phnum
>  field indicates the size of this array.
>  .P
> -These program headers are structures of the following form:
> +The ELF program header is described by the type Elf32_Phdr
> +or Elf64_Phdr depending on the architecture.

I think "is described by the Elf32_Phdr or Elf64_Phdr type,
depending..." sounds better here.

> +The following is an example of the 32-bit architecture:

How about "The following layout applies to 32-bit architectures:"?

Thanks,
Stefan.

>  .P
>  .in +4n
>  .EX
> --
> 2.39.2
>
>

