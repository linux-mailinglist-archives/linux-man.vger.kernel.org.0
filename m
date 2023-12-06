Return-Path: <linux-man+bounces-231-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D080D8079B3
	for <lists+linux-man@lfdr.de>; Wed,  6 Dec 2023 21:45:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8B2E4281835
	for <lists+linux-man@lfdr.de>; Wed,  6 Dec 2023 20:45:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45678364DC;
	Wed,  6 Dec 2023 20:45:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Pi0O77jp"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-x1135.google.com (mail-yw1-x1135.google.com [IPv6:2607:f8b0:4864:20::1135])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CEFE1193
	for <linux-man@vger.kernel.org>; Wed,  6 Dec 2023 12:45:32 -0800 (PST)
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-5d279bcce64so1685907b3.3
        for <linux-man@vger.kernel.org>; Wed, 06 Dec 2023 12:45:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701895532; x=1702500332; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fElmDgtMBR1T18hEonR2xrDkvrbYjkou9yBn5ZTkL58=;
        b=Pi0O77jpzsWgnORySVRn32r3eYVHyc9ekjuHndQIRWF4yOlDsFQ+9O3vJKj9JtCocO
         TVyHMlZNHjHMc7byDZzgIWDAWBAx6msE4kEIMXo9sDGlzMzp3+iqYh9E7mo1gzTVNbX5
         pWiR+eqZUJpGjL0ouGwT9Ahdznk8TlLV/wYQP/59Rd8jcvp1pxeNCQiSKeN3Bb0e9PKG
         kaLc7XSq/EqjBhsocFRHhZGbzs4FFaJo5fHmUzgXFgBWBYdWWrZ99YBRiebVsvCfzQGE
         1rTIwrhNJsLcdjNmH1HWJv/pQKcLu1+WNbyyQ3voFKZ+khjLYY3X6fXhA9X6nZEqUChU
         jMFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701895532; x=1702500332;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fElmDgtMBR1T18hEonR2xrDkvrbYjkou9yBn5ZTkL58=;
        b=nLb0MNzhhr+Cbp28N7RHj1jxWq0dvAix5Fwi6/UdIv4yHHLcQFUBnP9YApV/f+6QgV
         2zqYH/WD53/eTgrJoiD1gf6KLwN7a7POF2Yiyir2SdwZLXttbllwRluBp78bWFFClWNz
         XtQ7tMbBPIDVk284FWMqPz+WJIJrQTztRqsb47wNMDVyzx1BKIFMUq5abbek+GIW/dD6
         YMaFwaazjY64HmvnC1+weqsOf6Glw42JZDSX3RY9AvUFTPrTaZAeNtP+gKuV0Z21ThRC
         L4oBQcTshk6eUpXkiNS0v4/IdRANXXdt0oQHE9NxXcF86sAJZUMCo3+uot24+jnZp9Re
         uPUA==
X-Gm-Message-State: AOJu0YyMhD1SFtaEQspsGEoCgmFCMSh3+dlj8PbBbVsy9IxKldCGgztO
	oYmGASxwxBGJuVxb6r1mgKM=
X-Google-Smtp-Source: AGHT+IERtPlodk2/PzviawGIA3Xv+a8ppYFkcIW0EYbSieUnMNgRa7C3tiCsMGbEbtqp1Z6gTByrYA==
X-Received: by 2002:a25:838d:0:b0:db7:dad0:60c3 with SMTP id t13-20020a25838d000000b00db7dad060c3mr1299854ybk.80.1701895531869;
        Wed, 06 Dec 2023 12:45:31 -0800 (PST)
Received: from firmament.. (h198-137-20-4.xnet.uga.edu. [198.137.20.4])
        by smtp.gmail.com with ESMTPSA id p5-20020a258185000000b00da086d6921fsm3985602ybk.50.2023.12.06.12.45.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Dec 2023 12:45:31 -0800 (PST)
From: Matthew House <mattlloydhouse@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man <linux-man@vger.kernel.org>,
	Zack Weinberg <zack@owlfolio.org>,
	Lee Griffiths <poddster@gmail.com>
Subject: Re: [PATCH] sscanf.3: Remove term 'deprecated', and expand BUGS
Date: Wed,  6 Dec 2023 15:45:19 -0500
Message-ID: <20231206204522.756572-1-mattlloydhouse@gmail.com>
In-Reply-To: <ZXCjD5dP-jaUpeER@debian> <ZXDXBngCYG11NsMZ@debian>
References: <20231206145132.5538-2-alx@kernel.org> <ZXCjD5dP-jaUpeER@debian> <20231206183351.749567-1-mattlloydhouse@gmail.com> <ZXDXBngCYG11NsMZ@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 6, 2023 at 3:18 PM Alejandro Colomar <alx@kernel.org> wrote:
> Hi Matthew,
>
> On Wed, Dec 06, 2023 at 01:33:50PM -0500, Matthew House wrote:
> > I feel like this is rather overstating the difficulty. In practice, the
> > no-conversion condition is very commonly detected by checking whether
> > *endptr =3D=3D nptr after the call. The usual idiom I see is something =
like:
> >
> >     char *end;
> >     errno =3D 0;
> >     value =3D strtol(ptr, &end, 10);
> >     if (end =3D=3D ptr || *end !=3D '\0' || errno =3D=3D ERANGE)
>
> That test could trigger UB, if you passed an unsupported base.  Of
> course, in this case you pass 10, but what if the base was a
> user-controlled variable?  In such a case, nothing says what happens to
> 'end' (experimentally, I see it is not modified, so it would be left
> uninitialized); so dereferencing it, or even comparing it, would be UB.
>
> >         goto err;
>
> Yeah, if you just don't care and want to handle all errors in the same
> way, and you know the base is supported, this is correct.

The practical answer is that the base is never ultimately a user-controlled
variable. Sometimes people define wrapper functions with a variable base,
but that base is still ultimately fixed by all its callers. If you disagree
with this, I challenge you to name a single example.

The theoretical answer is that you can just replace (errno =3D=3D ERANGE) w=
ith
(errno !=3D 0), or just (errno), if you still don't care about distinguishi=
ng
a base error. If you do care about distinguishing a base error, you can
just check its value directly, which, as I said, most people prefer over
trying to decode different funnily-named values of errno in my experience.

    if (!(base =3D=3D 0 || base >=3D 2 && base <=3D 36))
        goto bad_base;
    char *end;
    errno =3D 0;
    value =3D strtol(ptr, &end, base);
    if (end =3D=3D ptr)
        goto not_a_number;
    if (*end !=3D '\0')
        goto trailing_garbage;
    if (errno =3D=3D ERANGE)=20
        goto overflow_error;
    /* the last could also be, e.g., if (value < 0 || value > MAX_VALUE) */

Thank you,
Matthew House

