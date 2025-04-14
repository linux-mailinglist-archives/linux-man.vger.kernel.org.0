Return-Path: <linux-man+bounces-2771-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 62D8FA88C72
	for <lists+linux-man@lfdr.de>; Mon, 14 Apr 2025 21:51:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 127733A5F4A
	for <lists+linux-man@lfdr.de>; Mon, 14 Apr 2025 19:50:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 533D11C7008;
	Mon, 14 Apr 2025 19:50:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lA3t0CLb"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63DEC1C6FF1
	for <linux-man@vger.kernel.org>; Mon, 14 Apr 2025 19:50:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744660258; cv=none; b=EkjGu8+2jwYdI3RD/4/OGMQzrI8FM07tlvjVQ6ZmjWch8yj/nOYILKy3YkhsegkunJWITWY5L8MvrNDTU35ikSVYTPZ45RxFpNXRk2WcFsb7/rTLaPZUJUJsRda6onNPYdEnCUFq9OetwRMY3e+bIIW4xyUoDPuwTuMu+4vgHR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744660258; c=relaxed/simple;
	bh=A4s77lTyJaAkP9jrlecdSgYJGBV2kv119Gn4vbWXZwI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=t5tdAh/56OTGPl7sH4XDfvnh0fImDfguyErDnhhmoQLXgmErzgJbkYdb5zyfQA/MOHSaU22XcjwpjqAYQCvbQizHSyamOGBRCvo65SVLW0xAHlqfX6PpQZbNcdjPsvr89q5jvuZSFGkjLojk9WiVSqwDIk7WraxwlDfeG5R9244=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lA3t0CLb; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-30bfe0d2b6dso49196001fa.3
        for <linux-man@vger.kernel.org>; Mon, 14 Apr 2025 12:50:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744660254; x=1745265054; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=rXG3CD291VMRu64rXQG3A34ooWE6M3w9+x+JTiAX+qk=;
        b=lA3t0CLb5qHmGFeaWhiwI3ur27ObAUuGfBN+DopvJLHQZ18uC2BHgxs9kID5/YDiYW
         o+8u70EMMQif1QJjFJn1mwq3oS7VoXndzim4dA0T2Da6t9GO7Xsq3UzuMVkWjn91MDMe
         4jZ3FueOO0MJ2U+s6OMKKhVQ7fDMn0PYG2QLLRSDvsrMUF4+PTF3tmDCRkjg5Ue8iKwN
         +JF3CvsidgdYNOJ8+0fdRsVK+uluCDXqK6mkMynlS+VbGkGOLiXaf45XOOLX0gAYaeL5
         dBoR6Ec/azWXu4gG2fEMERfeNTOxvnoYKzSVm3NL+mGeNGMom4pq7xH0PlY7xLJgZiB+
         AY1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744660254; x=1745265054;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rXG3CD291VMRu64rXQG3A34ooWE6M3w9+x+JTiAX+qk=;
        b=D9rmy7YpXsOTJLoTsUt75XN63YauxMRAhcmPgrqjdjJiMbkZOByN1Q1fJm/sMRMMfG
         7xCDDaC7TqfiffNQ3mMLiEDYrcUgDLvHTjO/65k1yG0sQr7aaPHOucQcpR14GsnMnNPx
         FGWNcurJFfmllDPwxmrY5z1enpCZCw1hATkY3ehSXOwzBYliUmurIiktEtHY/fiMyJPX
         c8BUVp3shSP6+sdx2jAmLCS/GIA++4uUkomlOlCc0mSKqemN9p31//GifOjKeHGNH3bk
         RZouJEDycb0XmkSjUaZiX4Jea9qa8v0S7HY1fhNAepKws/K+10Gc6cuRZ91vwBrrAtvo
         6hdQ==
X-Forwarded-Encrypted: i=1; AJvYcCUjSqkr7547ppZY0LAeJwMsRo08Fi7LeDbpUn1ZMHQPOpmgVfb539bIlABGaw+36EnnmqWzSK6BBg0=@vger.kernel.org
X-Gm-Message-State: AOJu0Ywnx3oPapB/j+ASILP3Xk1a1YKDjAkRFqYqUMZndKIr0Oih/Tkh
	CIuDmFzZQx16F22AK4gufrhF6IKX+rDKQpPY/OZXJjKU2q5XGlSdiMffUxLwzo+rGl0w6oSzIpF
	pibN9QQLUNUhXbeU6jU4K+hHALiw=
X-Gm-Gg: ASbGncv/SvJ5zsYH7h54lpgs1SVoKLxEwSllGG1j9eX7ev0iTd0oOuu3wJAElY1Ln5U
	NmGEoR3DWF83ehz0AMfrhlG602tPUAA8KHfgn0+DIuMO0rCw0IAgeyPpA9Ij2eV2X5lVAL21DJa
	YrWQLHkQEoWdUbyO0OKVoHnV5R2no1YDTPtqpFR0V7KWt17PhoI2Fv
X-Google-Smtp-Source: AGHT+IEy0+jyq/bz6ll/suEBlqTb2scywaV3bvkyCLB6kWSjvFb+akj0bB9HJCZF+QfJBJgmqxRMXvPSn+tYnQmGg90=
X-Received: by 2002:a2e:a912:0:b0:30d:e104:b67b with SMTP id
 38308e7fff4ca-31049a9f2d7mr41678701fa.38.1744660254167; Mon, 14 Apr 2025
 12:50:54 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <oohdlh2a5ab4z3exlwzdt64p43jr4h3q7envtpu22k76is3zix@rnct3c3mktor>
In-Reply-To: <oohdlh2a5ab4z3exlwzdt64p43jr4h3q7envtpu22k76is3zix@rnct3c3mktor>
From: Mark Harris <mark.hsj@gmail.com>
Date: Mon, 14 Apr 2025 12:50:41 -0700
X-Gm-Features: ATxdqUGtdp8uuCzomr7N1Hbjnjt1H2uyH1gSRtL2GIes022qc0S8cZmy_mm1ASQ
Message-ID: <CAMdZqKHh60oVCbZWvftzc7mCc6_candr8e7T7Vnaq9G2z=WrYg@mail.gmail.com>
Subject: Re: fchown(3posix) changes in Issue 8
To: Alejandro Colomar <alx@kernel.org>
Cc: Eric Blake <eblake@redhat.com>, linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Alejandro Colomar <alx@kernel.org> wrote:
>
> Hi Eric,
>
> I'm updating the manual pages' STANDARDS sections for POSIX.1-2024, and
> I noticed something weird in POSIX's fchown() specification.
>
> <https://pubs.opengroup.org/onlinepubs/9799919799/functions/fchown.html>
>
> The CHANGE HISTORY section says Issue 8 has applied Austin Group Defect
> 1330, but that defect doesn't seem to have anything to do with fchown(),
> and by visually comparing the specification between Issue 7 and 8 they
> seem identical.  Am I missing anything, or was that changelog entry a
> copy-paste mistake from POSIX?

The difference is in the description of the EINVAL error.  The text
"or an fattach()-ed STREAM" was removed, because STREAMS was removed
from POSIX.


 - Mark


>
>
> Have a lovely day!
> Alex
>
> --
> <https://www.alejandro-colomar.es/>

