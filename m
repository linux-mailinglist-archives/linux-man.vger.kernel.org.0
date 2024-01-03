Return-Path: <linux-man+bounces-338-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 22A9782279F
	for <lists+linux-man@lfdr.de>; Wed,  3 Jan 2024 04:51:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 426EA1C21918
	for <lists+linux-man@lfdr.de>; Wed,  3 Jan 2024 03:51:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B65FACA71;
	Wed,  3 Jan 2024 03:51:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="A/3X203V"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30FC2171B4
	for <linux-man@vger.kernel.org>; Wed,  3 Jan 2024 03:51:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-5f2aab1c0c5so569967b3.0
        for <linux-man@vger.kernel.org>; Tue, 02 Jan 2024 19:51:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704253876; x=1704858676; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f1WHEieI5tCieIzAIZHFhtYj0inT9RQ2AnH1GbwoRFU=;
        b=A/3X203V0n1Sic/QWc9ctQ8VShCX23uceNkgwdpJLv6Cwnol6DWZyOUSwZ7TW+TIUA
         C8uXMJVeALTf1OZNDcOKbxVrIL7Vu7xEqHt/iGlF1EiXAT3xwocpCSuVS6WRGpCYG7XQ
         U1Ff9/0iqUyLSQKt7ApBsFt/OA3zNsxixJ1MryhGOHNFN9QplIqDnAZlxiB81rK6YLpp
         l/FBRt30DkMN1rLXsmEZh5wP2RB9h4iiWJ09ekNOJCl/A2UcojG9WrroBDI1lWMrtCjB
         ubw/JRuoyusgKS5qTY6RG5pgSlZa/U4pPPul0A1jjt9OjEvYpxFLCL6wv/rCoFnvDKCu
         q5nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704253876; x=1704858676;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f1WHEieI5tCieIzAIZHFhtYj0inT9RQ2AnH1GbwoRFU=;
        b=r02DSKFxRoYwsp8qTnGfoxxcpxWNgDZIutElkl7AWcBxFjVqKjrFrjPeoI6DfPUywC
         tPaUOMUrDPHGqECYvZp7efI6pjUriPNZeOW56hUpeAIx/aMJqw1/24FW14R87mYmYDe7
         al7V8ewe9MPalLiCkxWGxsePDlALqMFysbwOHOyjHHC3RjmzxCVRkFDHbF8gRZoR4h1Z
         urSffIbOoHru1travkcfPCD/OSw9GwG0VMUwh67EQ1+w8JOcEsrSIFyNEXEliC4aZLAF
         0CZNQi97Sc/Kqvq7lan3JS8HAZdvvKNvGnicINCVPVsGBIM/Go5E7We7saB1MMnSFFpV
         qV8w==
X-Gm-Message-State: AOJu0YxOUJcA+gRQIWBLt9k/wdC6mO9sakei5rPmpiXqcGCsSkaZ723n
	EkdXWB6dJwEAFUjVD8Q7zlQ=
X-Google-Smtp-Source: AGHT+IGxfhththrTZHwB6PYrXRCZnn1GpYr58srr2qHF1DmWilrUw/eto5K3pmAcexupJkER2oK7KQ==
X-Received: by 2002:a0d:d613:0:b0:5d7:1940:3ef1 with SMTP id y19-20020a0dd613000000b005d719403ef1mr251671ywd.34.1704253876040;
        Tue, 02 Jan 2024 19:51:16 -0800 (PST)
Received: from ubuntu.localdomain (c-24-30-2-167.hsd1.ga.comcast.net. [24.30.2.167])
        by smtp.gmail.com with ESMTPSA id u124-20020a0deb82000000b005de8c10f283sm12492810ywe.102.2024.01.02.19.51.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jan 2024 19:51:15 -0800 (PST)
From: Matthew House <mattlloydhouse@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Morten Welinder <mwelinder@gmail.com>,
	linux-man@vger.kernel.org
Subject: Re: frexp man page: FLT_RADIX vs. 2
Date: Tue,  2 Jan 2024 22:50:51 -0500
Message-ID: <20240103035053.212096-1-mattlloydhouse@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <ZZS9LDDna5lnjA_K@debian>
References: <CANv4PNkqQBPn_oyfdYZfOck-7gGwzP6YPPA9hDaiaJPUj+c3xw@mail.gmail.com> <ZZS9LDDna5lnjA_K@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 2, 2024 at 8:49 PM Alejandro Colomar <alx@kernel.org> wrote:
> The value of that macro is defined to be 2; it can't have any other
> value.
>
> ISO C defines it in
> <http://port70.net/~nsz/c/c11/n1570.html#5.2.4.2.2p11>.
>
> POSIX defines it in
> <https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/float.h.html>.
>
> Maybe the definition of frexp() by ISO C and POSIX should be changed to
> define it in terms of FLT_RADIX instead of 2.
>
> Have a lovely day,
> Alex

Every version of ISO C says (emphasis mine):

  The values given in the following list shall be replaced by constant
  expressions with implementation-defined values that are *greater or
  equal* in magnitude (absolute value) to those shown, with the same sign:

  -- radix of exponent representation, b

     FLT_RADIX                        2

And POSIX defines it similarly. So FLT_RADIX can be greater than 2 (unless
the implementation defines __STDC_IEC_559__), it just can't be any less.
Indeed, the subsequent EXAMPLE 1 in ISO C sets FLT_RADIX to 16.

Thus, since frexp(3) is defined to return a power of 2, interpreting it as
a power of FLT_RADIX is incorrect in the general case.

Thank you,
Matthew House

