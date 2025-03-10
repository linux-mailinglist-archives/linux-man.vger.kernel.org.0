Return-Path: <linux-man+bounces-2591-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 09C8CA59E70
	for <lists+linux-man@lfdr.de>; Mon, 10 Mar 2025 18:31:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B5E60163AAF
	for <lists+linux-man@lfdr.de>; Mon, 10 Mar 2025 17:31:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1084C230BC3;
	Mon, 10 Mar 2025 17:31:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fXR6AvRy"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B570233150
	for <linux-man@vger.kernel.org>; Mon, 10 Mar 2025 17:30:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741627861; cv=none; b=mOFe8+UsioDJyKzf0/9ObhgmyTrk6JMN8mQ4uxToappIeaaFYj68Sduz1zNRt1KSFjKbyuxQpXpRYANeoFYqeHO2OIzG3fLq571OzDEOCmrsuSMp7xIyeR2oVt7vAFru/Us1wGEb1My3090dW4ZedkgbUy6wjAEezzpd+zCfcnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741627861; c=relaxed/simple;
	bh=n1HztRlPxfKcDbhgJVMexr6bEciNWghyXEWD/Iz3ER0=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Cc:Content-Type; b=nTOO7nVxI8e5u0UY3w8rb2Y5uvOfA8/pXZjnsLNtoc4cr8YC5bhOKiZdfOg2UrXHEJ15ZAyjGMeZ/GvwZWyE7o4fYwzWR/AWDsbdcbLy474HDoUS+A2UaJM4qLR58aZvx+nZAodEtWfjiu0yQCttWZcICnanq5FPeZSucDyCxFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fXR6AvRy; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-5e4d50ed90aso5714467a12.0
        for <linux-man@vger.kernel.org>; Mon, 10 Mar 2025 10:30:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741627858; x=1742232658; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=xyQNqTdAlU5K3PVusbNllwO6ZtIoRX+4zcHSwxkaFss=;
        b=fXR6AvRyKpTQt+vV/h+sa8H9leazt3zNeT91roSM8lqWrwDANzYpHyuLszzcn7f2hb
         qe/stF+KWCq/mmqUFq3z8xED5ZZhyxRcrOMelxfO5JZUFPWPGmcHRerSriRpmYOyrQXZ
         Af86wmW6prudnUtedyRDTuyVIYq7BMheqyfxYFGF5HTpCIG53NoMM0ueR8V5kj5WAi16
         ELchX+OZILdWYqCKJSFTwFPzw3kH5cLT6psYB/tthl6pSUecloOpoYSeECaFWrshuF2w
         Rv1ZR5nzrlDwB5QSjzy5JJzUnUDvHBroQPq/TmuG3zgSyKd7wNww2jA7S43elMrm6XhJ
         mojA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741627858; x=1742232658;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xyQNqTdAlU5K3PVusbNllwO6ZtIoRX+4zcHSwxkaFss=;
        b=lZL7eLB5fpDi0qGGJRrjO8EZ3r/NEbg7IAtkDJHVYxf/P3glbyUkHqc6N7gTEimN3D
         hTvvRVmXTySlfvpiLb0Uvi9V9GaZT46WE0cWXXWU8adEwty+eYA+00bqHUlwoatCMYMU
         vaXcz7UP8Pr9L/bB9ZABv8Ij/kqmfnvsKnrNKmuHmet6R8nP5eE4t/eTjYVRvHWy0RMn
         U8djVUuNExNJzIrklDVPMrURC6UroX9W9Z1FYmiZvE+uMjDg0q2BgWYzDiYnfr/QYVew
         w3NOrjnFxu1e6Nf/1x0FWrn9/PPzg6WDO2B8s5wWutDsY7P4KageUpZOHcQtspKJaTD7
         oqsA==
X-Gm-Message-State: AOJu0YwR0TSanAHZVDMAm+3HXl1sMIPBPLoEmJW50VRSzO7KJNLGR/5J
	us8W1dQhbVr9368NpUXliVgXsD8SZPrOcs0EN1r/Ep8awrH0kI4cs3djZNter32ohwMbiNh75tu
	+5KXdZQ4qZFjVwhAWVc/GG9He21AkoLvU
X-Gm-Gg: ASbGncsFyrhOHYFnD+1iKNeBvG9BdnZlHVjwD9+OMkDt5rr5o9ex5edrrdGpUJPpMom
	JVX0YupHX03HGmvqkWDu37yN8sgc3TbLAb998+g3fD3VWqp8PB2jls6A1l4uK1mrLk5fN5any7I
	QGRyIdzKhZ2qUBZkUGyOcpYRdc9AY=
X-Google-Smtp-Source: AGHT+IE/fKVxKZNSBdw4XabxuYEwywLl5Wzaty02mR1/MqaaWg/w5iAEEAN9tBfe9/2v078SNV/dOT0JWtNxUoMQqxg=
X-Received: by 2002:a17:907:3f9b:b0:abf:c20d:501a with SMTP id
 a640c23a62f3a-ac25264ca27mr1818730066b.16.1741627856633; Mon, 10 Mar 2025
 10:30:56 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Kang-Che Sung <explorer09@gmail.com>
Date: Tue, 11 Mar 2025 01:30:45 +0800
X-Gm-Features: AQ5f1JpX46_PjxoFhrwB_j4RgGWLtXHWEMcbUq5vOpVotU7z4PRVvoLNA1kuSyM
Message-ID: <CADDzAfM1HhyASu58RGCANR-K3ETrK5KExD5PpU_2-AmPvgrszA@mail.gmail.com>
Subject: [man-pages] Question about the length notations in C library functions
To: alx@kernel.org
Cc: linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Alejandro,

I would like to ask a question about the length notations in many of
the C functions in the Linux man pages.

For example, in the synopsis section of mcstowcs(3):

    size_t mbstowcs(wchar_t dest[restrict .dsize], const char
*restrict src, size_t dsize);

What is the dot character before the `dsize` for?

When I tried to include this prototype verbatim in C code (C99 and
above), I got a compiler error. There is no dot allowed in the
notation like this.

Another error I got is that `dsize` is undeclared, because `dsize` is
an argument only declared _later_  in the prototype. So ultimately the
prototype only worked when the `dsize` token is commented out:

    size_t mbstowcs(wchar_t dest[restrict /* dsize */], const char
*restrict src, size_t dsize);

I personally like these length notations in the function synopses
because they give a quick view on how the length arguments are
applied. Except that the notations should compile, or else they could
draw more confusion.

And, as you mentioned something about the `_Countof` proposal in the
comment here
(https://github.com/llvm/llvm-project/issues/130429#issuecomment-2710310494),
I think it's also good to let you know, that the `dsize` in the
example above, doesn't compile (thus you have another language issue
to address). :)

(In case you didn't notice, I'm the same person who reported the
mbsnrtowcs(3) man page bug
(https://bugzilla.kernel.org/show_bug.cgi?id=219847), because I tried
implementing a version of mbsnrtowcs and mbsrtowcs just as a hobby. My
code can be seen here:
(https://gitlab.com/-/snippets/3718423))

