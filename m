Return-Path: <linux-man+bounces-245-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C9D280BDAC
	for <lists+linux-man@lfdr.de>; Sun, 10 Dec 2023 23:25:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 28B871F20CCA
	for <lists+linux-man@lfdr.de>; Sun, 10 Dec 2023 22:25:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4AA71D52D;
	Sun, 10 Dec 2023 22:25:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=habets.se header.i=@habets.se header.b="QwZqK+Hx"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 50FD4E7
	for <linux-man@vger.kernel.org>; Sun, 10 Dec 2023 14:25:23 -0800 (PST)
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2c9f7fe6623so46908041fa.3
        for <linux-man@vger.kernel.org>; Sun, 10 Dec 2023 14:25:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=habets.se; s=google; t=1702247121; x=1702851921; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:references:mime-version:in-reply-to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=u2qlIHYetkwV/Iy6Gt9kRPLtOWi1n3fMjHB3r4pntrM=;
        b=QwZqK+HxzxCcqL5mpYVpp1w77if7pfTz+sTNHkMKTFEI+U+ogUhQ+mDCCvi4kkdtBM
         av82aC2pb8ZxUydCwlA9ynvY+aYImsdGqBG7tq7UL+mANe/Ut6fXqzlJCmB6AUcN1wPw
         pIm1GgwQzKgZkB3ra1nMainvW1/8VqaTlwXi8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702247121; x=1702851921;
        h=cc:to:subject:message-id:date:references:mime-version:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=u2qlIHYetkwV/Iy6Gt9kRPLtOWi1n3fMjHB3r4pntrM=;
        b=UjcUuZJYPyI7kVC8GRV7zc8io08i1cQZaYSgA4U5/JaRVBTcjn8gNlW0FMEj8g4OWw
         4YyqSojK9ZI3Jd+7hlPPTbokNo2fvaMGrhjqiAnIPYUJyzDFsf9mMHRm6+M3ALtnxG1B
         MNDLtUI+w1ZtDOe6EikB8ns3w3+ktmFzgTALoYb1oJSWaaBjmzSyQFf7XcbGM1YNXIVV
         fvSqHglI2ijfEd64NLsybcQhXtde2KvnnEAFuuDdtCaVWW/T7LSguqAJy2Jzj2wkaDLC
         e/dBi697ydxWlqTqGA+1H5WW/1mdcYs2Lg4lDKbCzaIrGSMeFkBzduw/1E7LdfYvAoVI
         eWqA==
X-Gm-Message-State: AOJu0Ywx2AdAOvg9wyb4Hf92Ol7wwShGM2dflvnFScgvqt5DyjRFgStb
	kpe5zYuV03UXQ4tGRHuv31A+603aPbn9eZwm7lpiOLKAdlCgLIc8YA4=
X-Google-Smtp-Source: AGHT+IHza6CDSbdegslndHrNuzze5uGjG2g/bIDU1QlbjyzTseR9GvutVPPkCwcZMtoH0446293aN0I5S/pPds7PEUk=
X-Received: by 2002:a19:e003:0:b0:507:a04c:76e8 with SMTP id
 x3-20020a19e003000000b00507a04c76e8mr847652lfg.46.1702247121386; Sun, 10 Dec
 2023 14:25:21 -0800 (PST)
Received: from 195210475306 named unknown by gmailapi.google.com with
 HTTPREST; Sun, 10 Dec 2023 14:25:20 -0800
From: Thomas Habets <thomas@habets.se>
In-Reply-To: <ZXYhCo6s-usIn-9d@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CA+kHd+cpgbREUpfm+xBJkhUNc52n1juM3gF_M+8_Wo3AU6wdEw@mail.gmail.com>
 <ZXYhCo6s-usIn-9d@debian>
Date: Sun, 10 Dec 2023 14:25:20 -0800
Message-ID: <CA+kHd+eOibN0vynr5WdBHQKfMSMBBC_tS+24_771475yYt_SqQ@mail.gmail.com>
Subject: Re: [patch] atoi.3: Document return value on under/overflow as undefined
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Sun, 10 Dec 2023 20:35:15 +0000, Alejandro Colomar <alx@kernel.org> said:
> For extra fun, you could have quoted this together :)
>
> ```
>      except that atoi() does not detect errors.
> ```

Yeah, which of course makes no sense no matter if over/underflow is
supposed to be considered an "error".

> However, maybe we should instead try to fix glibc to do the right thing.
>
> 	int
> 	atoi(const char *nptr)
> 	{
> 		int   i, err;
>
> 		i = strtoi(nptr, NULL, 10, INT_MIN, INT_MAX, &err);
> 		if (err)
> 			errno = err;
> 		return i;
> 	}
>
> This is compatible with ISO C, since it behaves like
>
> 	(int) strtol(nptr, NULL, 10);
>
> "Except for the behavior on error", in which this atoi(3) implementation
> sets errno, but nothing forbids that (ISO C only says "need not affect
> the value of the integer expression errno on an error", which allows
> affecting errno).  POSIX also allows this implementation: "except that
> the handling of errors may differ".

If we don't change the manpage, then it should return 0 on error, not
the clamped value. Unless you mean that the manpage should be changed
to say it'll return the clamped value?

Portable code won't be able to rely on errno anyway, so might as well
not set it, in my opinion.

But at least this implementation won't trigger UB for any input.

--
typedef struct me_s {
  char name[]      = { "Thomas Habets" };
  char email[]     = { "thomas@habets.se" };
  char kernel[]    = { "Linux" };
  char *pgpKey[]   = { "http://www.habets.pp.se/pubkey.txt" };
  char pgp[] = { "9907 8698 8A24 F52F 1C2E  87F6 39A4 9EEA 460A 0169" };
  char coolcmd[]   = { "echo '. ./_&. ./_'>_;. ./_" };
} me_t;

