Return-Path: <linux-man+bounces-2909-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 00902AB3F47
	for <lists+linux-man@lfdr.de>; Mon, 12 May 2025 19:34:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4F1474602A8
	for <lists+linux-man@lfdr.de>; Mon, 12 May 2025 17:34:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C146C296D17;
	Mon, 12 May 2025 17:34:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="P4GgZi/5"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 103B523C510
	for <linux-man@vger.kernel.org>; Mon, 12 May 2025 17:34:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747071280; cv=none; b=nT0azPc1LsDgCjYUQkiyCNeeeIgKdiU2Sejc+/tKZUC8/Cd2oHBmt6ZB26WlmcTBDxQCYqDzJeJdV1b1eHtjdmn6Q+EGpSZ+qgNtt7NmUCEjCAy6WG0F5hjGOSqO1gNTad/E8qSYAGgJyjY4YUF8ehYa5/Qee+q8vJnZoPZMJmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747071280; c=relaxed/simple;
	bh=g6SZqkjxTlyOZ3zybDJaW5b4FjjB0ZHegr69awn2z8s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZGcdmxq4N4g2SvqyTNOQrUwEcUlxnq2ufDnLYKECchhbVHXB9iD9C4+N87WU9hUs9smtAETsJJZ0Iwa2g/iGqwen+mPePamlqsnKvyaCEJEb+7yrf715dZOwCW/dis5Cuj/x6vi78lKGbhEy8yONTgvJEFCQ85lYWy/itFjBCog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=P4GgZi/5; arc=none smtp.client-ip=209.85.160.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f177.google.com with SMTP id d75a77b69052e-47e9fea29easo27801cf.1
        for <linux-man@vger.kernel.org>; Mon, 12 May 2025 10:34:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1747071278; x=1747676078; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L32TaVnBXLMdH7kGFVD3fPi99inq6dfjqi5VDLf2qck=;
        b=P4GgZi/520ntqf7rHXXxwoG8Ymo/SWf52J2ourpZNXbzrcjCwB3pqBgyZLhosVy/SJ
         ffXUHwj0wqb2sKBloI/Iqn5yUVu7ijfCE69d6oxmd376q98k9gd0s/86w8i6O+W7zLlh
         S5k8lUbddEaT2GN4SaJuxLbiiNJhT4XmrqS7R5Yp3ndcJOuRnpeQFFHT0L8pJ8AQJzZT
         viiCeOfdWRrZQhXxQQx/gmB3I0CCmGEf/XkkhJViAPXfcEr1KjCj4EyN5C3Fy5eghcS3
         Bd7NkmwJAGPMBujP1Ivwwbo+LuUf5ehLER6PL8xk80MnHzdjQTcNUlnj743AsaEQa285
         dwQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747071278; x=1747676078;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L32TaVnBXLMdH7kGFVD3fPi99inq6dfjqi5VDLf2qck=;
        b=AuJIGETqjOmFv924FvXC1aORm/Anf0FHr+TPLScONRRfNLIc9Kdg1KI5VMe5S5+Ok2
         +9ATHCElrzixbgbbIvOsdN3wswyDI+qEjYMXi6a64XXAgkvEn5I0ghdgfi5EmupaE1sH
         /pHqM/KmS4oguRLnuKoTTPzDsQa/k4zPz0WrfPzdB+ae496jRE8LkDK2mSDdMXrBNsQT
         S8YmwMAMRsPjuQJSR8yEJFuEwD2fw3b1CcgAWdCJDv7mgkY1g/+9BtQq2MMAQZkGZfEK
         mM3dSLBCZys7GmsDi6BxiJ2igc9cAbzZ2hYGVav31/81NJwpYAU8Y3mjGh5oNR1oy7Rh
         nXXw==
X-Forwarded-Encrypted: i=1; AJvYcCUezxzWQX7MK0ij8Zzoy/P2jGacdGfne1roFKzmhzPP8KRn3WEboZy/SUPMwHc3Km+ZCeQJE4/CpQw=@vger.kernel.org
X-Gm-Message-State: AOJu0YyrR5e4+Nqpko4GKi3Q+cQoWPQbZrCbGFqcicilEOZD20PjlxIV
	H1MMMUOKJbyVs1C7SALP3mBC/y5nZZI4lptP5LGIvJgE+KnsyLjJ0a0V+QP4O+G9gWPXMBXcYBz
	87rvGdsMyvUbwJumMAEDtpOnhdO8e8OCdC2c3
X-Gm-Gg: ASbGnctaCDGOzjISDf0AFO++huqvM7isv7wjXOGAajORpc2b+V1xm6nLheyvF2Wmb3l
	dj49JcuGI0ZnmZp9t/+H9/3c3yu3cJHYzG/LUNAB4zgpweM+zTw6JYJS/63KADezJcyknecO4z2
	ub5JTni7L5Y1MBR0iZyw0dPgRLf4H5cO1tG1YEE/Btfg==
X-Google-Smtp-Source: AGHT+IGTYkrhUV+DLsh845oG0n/rLmhyxUlaHkQ2b5H0oBWRt3eLZt6UDnXo3F2HT4sInc546Mn5P2nyRxMkvjW1VbM=
X-Received: by 2002:ac8:7dcf:0:b0:47d:c9f0:da47 with SMTP id
 d75a77b69052e-49462f90dd7mr9301381cf.19.1747071277522; Mon, 12 May 2025
 10:34:37 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250512171922.356408-1-peterx@redhat.com> <20250512171922.356408-3-peterx@redhat.com>
In-Reply-To: <20250512171922.356408-3-peterx@redhat.com>
From: Suren Baghdasaryan <surenb@google.com>
Date: Mon, 12 May 2025 10:34:26 -0700
X-Gm-Features: AX0GCFs7qEHb9TzjpZlu7kdd28NaoL_rPenAPBM0hzPGJ9tZPP4HKos4WSwSBQY
Message-ID: <CAJuCfpGFTKwgS03X2BqeHm0Pjm-7SqVKRQqAf3FYbu1t7P8n9w@mail.gmail.com>
Subject: Re: [PATCH 2/2] UFFDIO_API.2const: Add an entry for UFFDIO_MOVE
To: Peter Xu <peterx@redhat.com>
Cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Andrea Arcangeli <aarcange@redhat.com>, Mike Rapoport <rppt@kernel.org>, 
	Axel Rasmussen <axelrasmussen@google.com>, Kyle Huey <me@kylehuey.com>, linux-mm@kvack.org, 
	"Robert O'Callahan" <robert@ocallahan.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, May 12, 2025 at 10:19=E2=80=AFAM Peter Xu <peterx@redhat.com> wrote=
:
>
> Add the entry for UFFDIO_MOVE in UFFDIO_API.
>
> Signed-off-by: Peter Xu <peterx@redhat.com>

Reviewed-by: Suren Baghdasaryan <surenb@google.com>

Thanks!


> ---
>  man/man2const/UFFDIO_API.2const | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/man/man2const/UFFDIO_API.2const b/man/man2const/UFFDIO_API.2=
const
> index 1c554107a..17ea6f905 100644
> --- a/man/man2const/UFFDIO_API.2const
> +++ b/man/man2const/UFFDIO_API.2const
> @@ -204,6 +204,12 @@ ioctl.
>  If this feature bit is set,
>  the write protection faults would be asynchronously resolved
>  by the kernel.
> +.TP
> +.BR UFFD_FEATURE_MOVE " (since Linux 6.8)"
> +If this feature bit is set,
> +the kernel supports resolving faults with the
> +.B UFFDIO_MOVE
> +ioctl.
>  .P
>  The returned
>  .I argp->ioctls
> --
> 2.49.0
>

