Return-Path: <linux-man+bounces-392-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BC0A88314C3
	for <lists+linux-man@lfdr.de>; Thu, 18 Jan 2024 09:36:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 750E72839BA
	for <lists+linux-man@lfdr.de>; Thu, 18 Jan 2024 08:35:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AFAE2030E;
	Thu, 18 Jan 2024 08:24:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jmgs+qbL"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 718BC1D533
	for <linux-man@vger.kernel.org>; Thu, 18 Jan 2024 08:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705566264; cv=none; b=Q4FEL/Fb0Eu1VJbfJbdUBoIx7TpjDVoWmLgneWM0yDanilDy597rF/9mUEu0NaTMUN5+6rsb3rrdLbQ8i9zqS33tuNdSH+c0G+bCXohpdoXmcYu3EVcz0DEWubxNNzTBML3iA88GMWbPLVFitzOalyXgU+IHOOer9nAqEtt2UsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705566264; c=relaxed/simple;
	bh=Zg6xDvs8Pya+CaTFcOydjp/vOBzCXL+ILtQt28Nat30=;
	h=Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Google-Smtp-Source:X-Received:MIME-Version:
	 References:In-Reply-To:From:Date:Message-ID:Subject:To:Cc:
	 Content-Type:Content-Transfer-Encoding; b=MWxRMGPS/eNXyZ72rGP2vz8t8Qd0npzC9R3xYnSPcIGH3Fb8QfzraYG7JpY69T2RIECd6uM+oGbfTbqwf+gR/CHv1uSvY61IAwqUNb0bv7HhmvQmjT5+pTxjK9nKFejtkvpQGN78D1sczdDEhZyi58qkg7Ax7+lwX1JJwDskh8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jmgs+qbL; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a2bdc3a3c84so824960766b.0
        for <linux-man@vger.kernel.org>; Thu, 18 Jan 2024 00:24:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705566261; x=1706171061; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A0IN2BjvIuuhrcVsqSmteq+Cak2ZlcxVN2+a7grD45k=;
        b=jmgs+qbLaYP6QfFgzpOIFQPdYNxTKiFiM/rYf1TZYvDFVDQndvEcfkgjjuVn7Hlr6r
         CWswXH/TM8OeJuAtmJXg4Qz9oe4eVZdWaz8ER627l5afnhrZzEA4cLeMyY7P79RGt/q/
         8Ewvv40gyquai51UWMXR49SohCvSLe1USzPsEnRWosH9ZWKXtnaA1iFX7fwbl87dnNP9
         0s2NkgmUjUNj2M0IdzDKbX/YbzZtyZ3Myclc+EHM7dyvWjBMdJfowoemss97uUpQlkw4
         nky1ftuiZ7OYkCc0klEQF3Oy5rfbPhUsaB03jFWvL2RaKSpH4fwDpq6jIqbbb1lVtsve
         WvXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705566261; x=1706171061;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=A0IN2BjvIuuhrcVsqSmteq+Cak2ZlcxVN2+a7grD45k=;
        b=cjBiR8ryR7BPsJvM57Pblbfk0mV6HzML/A54/srtXjokPAlBJH+XYOGT6LjkFvGm1M
         BHRuPtmqBaozWkX6mZ4OhD2cn4SVBkBoTcvTR/BW8CEOX8B0nKvB+lDmCFWGjmNfGRpO
         z5/qZTV+5OlnvFapxnQRruvO0MF/YClIJZwI+ZyEN3d0xezsefOge8yc0LRYOZtvpZeX
         EG4sLea7MLM/Nppa9t6Git9Hfb2hZg+WrhmJTFV6Rdi4jClIK/r/ogjWy2Hu0IVsCGVn
         6bAHfcS+qtacerAD2EBUUvQzWsowxdW4ADWAcZV5Xhv9JkQnYfvYaZC2RnXfC8hmlPqq
         dlAg==
X-Gm-Message-State: AOJu0YxKCLnjeW1YxoqM2APHVzErxMDHmSwgRfRnFfFhGMLJpoIrpmhb
	HA2NwA2p/60OMlSr8vgZiPqap296TiN+HYe/iIxfrOm9PRF67zxKXaFbrZ4rR2xwHzqecFp7gah
	mIsQYb8MPq6Iwa31FNHskfBopMQg=
X-Google-Smtp-Source: AGHT+IGWKlxcKFKII4aExofUtULZ44ArFi+bfmiwJdFAaWa+RojlWoSq2M5GntcEAztfVSvJC1UqaFrT6BO1f7GkZFc=
X-Received: by 2002:a17:906:364d:b0:a2c:2094:5d46 with SMTP id
 r13-20020a170906364d00b00a2c20945d46mr208724ejb.81.1705566261486; Thu, 18 Jan
 2024 00:24:21 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240116134020.wvyiel53ydi4gey6@illithid>
In-Reply-To: <20240116134020.wvyiel53ydi4gey6@illithid>
From: Stefan Puiu <stefan.puiu@gmail.com>
Date: Thu, 18 Jan 2024 10:24:08 +0200
Message-ID: <CACKs7VCLtDTYYyF6xNXNqvjz0ZGhTsOPsc3xS7JTRG=dvTSP-g@mail.gmail.com>
Subject: Re: [PATCH 4/4] man2/syscalls.2: ffix
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Branden,

On Tue, Jan 16, 2024 at 3:40=E2=80=AFPM G. Branden Robinson
<g.branden.robinson@gmail.com> wrote:
>
> Refactor table format specification: use column modifiers to set heading
> rows in bold instead of populating every entry in them with font
> selection escape sequences.  Use a single '_' to indicate a horizontal
> rule spanning the table.  Put vertical space before the table
> (making it resemble a typographical "display") rather than after the
> after the column heading.

Duplicate 'after the'?

Thanks,
Stefan.

