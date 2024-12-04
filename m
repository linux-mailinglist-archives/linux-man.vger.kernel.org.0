Return-Path: <linux-man+bounces-2108-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 771789E4744
	for <lists+linux-man@lfdr.de>; Wed,  4 Dec 2024 22:55:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 52FED167C01
	for <lists+linux-man@lfdr.de>; Wed,  4 Dec 2024 21:55:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C99F318FDC2;
	Wed,  4 Dec 2024 21:55:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="1dtpnRLm"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E94CC2391A0
	for <linux-man@vger.kernel.org>; Wed,  4 Dec 2024 21:55:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733349349; cv=none; b=AmCB4DiJPqOFWE8N7+bZB991i5XoT/HKe4QqPOilO0pLSqkJ8YPcAUr55egR1Bt5ZU4M/tifXIq1By0/EWA/HxiLItdQegvYcVQP2ThHIsZxJSo/3Q27XGK4axgPEIOVgtx4jSb2ZzQd9vn39ywXN1be9NeeisrKmfFs/5eG4iE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733349349; c=relaxed/simple;
	bh=IMiQ2u/Zc2kHvz4sv1w1Nw0ZdUAgxlMURi1u2JV3CYw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ecSA3vmplsEpNCPAdXH0gG5qlDOsYinRbKezlPgwKufVY5wQ8/e9HpPvMipLU4mKrP5FUCyrBFHfaWLVHWd0FJYasft9Qc7KaD71BSsjgNjALyQQe5Vons80dQYZCB05AGlgD9mqJdWB4/iWKi8WVd8wbBnqu8hHu2SQHpQHpPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=1dtpnRLm; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-5d0c5c8cb5cso851a12.0
        for <linux-man@vger.kernel.org>; Wed, 04 Dec 2024 13:55:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1733349346; x=1733954146; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IMiQ2u/Zc2kHvz4sv1w1Nw0ZdUAgxlMURi1u2JV3CYw=;
        b=1dtpnRLmQRqCZu5auM+5qgqLlc7k7dN8kylcsdIHAzfVUwCp0wiVAt25cUtj8auTyG
         QeSQU7BLD9QzlPHkA/Ab7tw8jpQpjehQolMDH5EGSq/CQ52wm0TzaqpTshjSoSzr6/gQ
         IYWyUhNNOEvkQJ0Bc1FHTQvciSFDfCqJKzrkH/InFNCUpT+8yjEPZ2pY9eTkAdDt5ODW
         Qo6X1Jir16zse6CzqbiGmkrr7rKSueLeL0bbsqHsiQpV6WVorHghGIz1+pWABkX2gwg7
         Gz587Tdlf9CR6/rflOX3H4/+fLsnlUODiIT56mByL7fHuWFs5xUfQL8MWV60jwNJoL2h
         PvrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733349346; x=1733954146;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IMiQ2u/Zc2kHvz4sv1w1Nw0ZdUAgxlMURi1u2JV3CYw=;
        b=CJHf+LFobS4up4qWTPnn90D1uWu38O24yU+sNYvvyGmy0UgynNwDosipl6Wscsv9MD
         i/n/WHXYW9fY+oMvqKAyR7+Yjj0HsQdogf09Y+1uPQnenxd29KZe3eP/rjL43Puto97S
         vVbdG2/KgvxwlsFaYJXJ5Lt+N82cJtrEHcuC4JGvwpenDDj7oF6VZbGiFQdfK+PI+kRX
         Gl3Ce8tv1n0HxOb5brXKoxxr5Hip4QO1lPUzW8W2n9HVEplQIsLf4HtCcSc7KlpSJqv+
         IibjZLkzRwS6p81yuniKq2OI+CE3If/xs+UowwD64atEMIUcSRoxPuMUvWrrYk0FENW8
         uTDw==
X-Forwarded-Encrypted: i=1; AJvYcCWH/tnegb34SFzApA6Ma1TRfm8kIQhb3yjbVbZiHrWAkugJ5Jr8emIPh6XRdx9MGoxxCDTShwBEh4c=@vger.kernel.org
X-Gm-Message-State: AOJu0YxPbnRi7/v5fDvyhgqmp8O5O7cEL+vsuXpMRXuai7MrtTkmC04E
	1R9AOBJzKuJFeu3iBVZ8A81bUGpPAqsFh42LuIIL7lkte57ikMxDG3VQoGb93VHv0uXT82vYvhw
	6la/JXXUObr60/Gp5dniaPylCW+IjDDmkk61S
X-Gm-Gg: ASbGnctQEVz7SR30JTDc+RyJJevDDrici7zaODEJ4zXlHuqgueJCox/OE93m3rLfZZH
	4WZXi4rGduKmLOQQT03gLdHGHlzZKbLO94fk8xFcW/o+hoGJnWVzxoT/4gJo=
X-Google-Smtp-Source: AGHT+IEEohoifE5Eot4EK58etrAKXc5uyTYYgVTf9FDYBpQvVGSrkTHkziz5Jre1jyL9uPZjIQbyVWdZRRuu5I8O3w0=
X-Received: by 2002:aa7:c0d9:0:b0:5d0:b6ff:5277 with SMTP id
 4fb4d7f45d1cf-5d12598f208mr29089a12.2.1733349345713; Wed, 04 Dec 2024
 13:55:45 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241202165829.72121-1-lorenzo.stoakes@oracle.com>
In-Reply-To: <20241202165829.72121-1-lorenzo.stoakes@oracle.com>
From: Jann Horn <jannh@google.com>
Date: Wed, 4 Dec 2024 22:55:09 +0100
Message-ID: <CAG48ez2Djqj2_5fqn5nfXewyBHSBFUvEgHZ2Nin-FmYArkkXOQ@mail.gmail.com>
Subject: Re: [PATCH man-pages v3] madvise.2: add MADV_GUARD_INSTALL,
 MADV_GUARD_REMOVE description
To: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
Cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org, 
	Suren Baghdasaryan <surenb@google.com>, "Liam R . Howlett" <Liam.Howlett@oracle.com>, 
	Matthew Wilcox <willy@infradead.org>, Vlastimil Babka <vbabka@suse.cz>, linux-mm@kvack.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 2, 2024 at 5:58=E2=80=AFPM Lorenzo Stoakes
<lorenzo.stoakes@oracle.com> wrote:
> Lightweight guard region support has been added to Linux 6.13, which adds
> MADV_GUARD_INSTALL and MADV_GUARD_REMOVE flags to the madvise() system
> call. Therefore, update the manpage for madvise() and describe these
> operations.
>
> Signed-off-by: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>

Looks good to me. Thanks for adding nice manpage documentation for this fea=
ture!

Reviewed-by: Jann Horn <jannh@google.com>

