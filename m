Return-Path: <linux-man+bounces-2087-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 955049DEBFD
	for <lists+linux-man@lfdr.de>; Fri, 29 Nov 2024 19:14:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BE5B2B21BFF
	for <lists+linux-man@lfdr.de>; Fri, 29 Nov 2024 18:14:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A04C01A08C4;
	Fri, 29 Nov 2024 18:14:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="m1XZGn4c"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAF551A01B8
	for <linux-man@vger.kernel.org>; Fri, 29 Nov 2024 18:14:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732904042; cv=none; b=BpoVvbP5XVfaGuCBIVBOeznrOpiU8ViscMaN/kk4KSfHQ7zBOSsF7Ihsxc/eDbVdnbLwwC49BEoDvzG2JT+CymMhrxCimsaKen3CtNuaM0KYQ/qXOv2L7ZoITc4f2zJEvct/VxMGXkWnmIt5xmXGUfzgGLuP4JW8+DYnK00EdVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732904042; c=relaxed/simple;
	bh=xLH/M4vG5atu8KWN1lzMiXMqatq4hv702+zgokm3jis=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qrK3gf4quevu5sQ/Lx7Bt7spcmvcKHaSJ0z/KLB9wCuFm9/Lx7mSwpHT0877Xv+PKmwzkPO3N1spVZEqRvCYSgJl9XF49lev+lddBRZcpdo7Ey/afBItoUW/FZCY0As8omLCG5fEV9mlk205pYvWDcUWHCNSx8stac45SERAIwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=m1XZGn4c; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5cfc18d5259so17919a12.1
        for <linux-man@vger.kernel.org>; Fri, 29 Nov 2024 10:14:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1732904039; x=1733508839; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xLH/M4vG5atu8KWN1lzMiXMqatq4hv702+zgokm3jis=;
        b=m1XZGn4cD3HQNMeCNMbJ5cD42gTmEK8tIacqv6FZGBgdcahZMD9x+EU+pkvmK4ZBjV
         Kp69nmN9DJLqLVJb17QFo2AHmUYTgjkkzM3VqhlqYAnbwmZGe0xIeDUHTH3BFYfZvvuZ
         FwU4HEExlUHISwGNPT+O8VK13mXcRdkprm9OYCFw0GXLtQVOsEtFjeR1fm+LQCVAChgq
         u+R1NoMx+PGPRi6wO9dTGJmdYeZZRAk02hOdfF0ykFKRgxgbSgqGQs5SV78tHt5Mj00y
         s3BFKlJgEeiX+GrzlwvLylP8W5W+DA9EgaCh8FIggnn2YLimuR07O/8omnpKPvtNpu+5
         lIpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732904039; x=1733508839;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xLH/M4vG5atu8KWN1lzMiXMqatq4hv702+zgokm3jis=;
        b=JDb784y8D8IIhPM1F4j0PIs2iwPTAs8HzNFyQovHMeX8oJKEeO1PGVTlMGfdgkgcOe
         Ifrst/s73jZKgzRJqRVJNRg6F7VtDNPtGU1p8e0R+3LwOGIq79gbn8nOIzqgzKf0nWqm
         ZrEfvuClTZvyK0M/cjG6CPVhCJq8W6raq+F8kjzsLyLvaJGvK9dL/Az6X0EQshNs18DQ
         UQN1GwgKipyBluUy10Wi17iOYg0LM6SJAhR3DlekXBzYGrmxGU1j+8djzHiHWWQFnXDQ
         e8JZ59u2awM+Vf/Dh4hSwqps1GY3KI2jEsC0cFIn5N9YnRpRxxXD5Xy2ApxyPXEVG297
         AvrQ==
X-Forwarded-Encrypted: i=1; AJvYcCVSc3vffojMjYWyHkyBQS659EAyhM6g01PEIN3MuuqrXRQQegKeZ0zkiOirfeJttMEB4fxce3JBmis=@vger.kernel.org
X-Gm-Message-State: AOJu0YyYHW2auLFPeebcdZ74IQKMfrrKPSrTLLU/sLPC5V9DvPHTUOc0
	/P2xpPDPaxUxvNSadbVGH1V94joPwoZ0qJoS8TWGEtg3KMt2B5XVmmXxJhwzLyUmhih7/vEXis7
	tQIkzVZcTySWRbfo3uaJpEfQ/fzXmovakqat0
X-Gm-Gg: ASbGncu5/uGKsZQLoTMa5+M77acOUoSe4uSWm10wyUjsjR2e+JtwV5L773bTQ2hdgOs
	gDkHEiltl9XZDRBI2F74qXE+VIrwclUwMGKAE+X0RrM8cs/r89zWbOjf4n4o=
X-Google-Smtp-Source: AGHT+IEua20Eqb1JaSJTjoS41LVjYaqL8FMfX/x58myfzkw5AxRCOo+g07QT8Vi+Hj5kojc7NvaYaZVtD/vPKtNbGpo=
X-Received: by 2002:aa7:c913:0:b0:5d0:b20c:205c with SMTP id
 4fb4d7f45d1cf-5d0b20c22abmr52383a12.5.1732904038464; Fri, 29 Nov 2024
 10:13:58 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241129155943.85215-1-lorenzo.stoakes@oracle.com>
In-Reply-To: <20241129155943.85215-1-lorenzo.stoakes@oracle.com>
From: Jann Horn <jannh@google.com>
Date: Fri, 29 Nov 2024 19:13:22 +0100
Message-ID: <CAG48ez308HQ1XOKtZM7pDVq8tG5LSnD-7jSx9NF79CpALwPD5g@mail.gmail.com>
Subject: Re: [PATCH man-pages v2] madvise.2: add MADV_GUARD_INSTALL,
 MADV_GUARD_REMOVE description
To: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
Cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org, 
	Suren Baghdasaryan <surenb@google.com>, "Liam R . Howlett" <Liam.Howlett@oracle.com>, 
	Matthew Wilcox <willy@infradead.org>, Vlastimil Babka <vbabka@suse.cz>, linux-mm@kvack.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 29, 2024 at 4:59=E2=80=AFPM Lorenzo Stoakes
<lorenzo.stoakes@oracle.com> wrote:
> Lightweight guard region support has been added to Linux 6.13, which adds
> MADV_GUARD_INSTALL and MADV_GUARD_REMOVE flags to the madvise() system
> call. Therefore, update the manpage for madvise() and describe these
> operations.
[...]
> +.TP
> +.BR MADV_GUARD_INSTALL " (since Linux 6.13)"
> +Install a lightweight guard region into the range specified by
> +.I addr
> +and
> +.IR size ,
> +causing any read or write in the range to result in a fatal
> +.B SIGSEGV
> +signal being raised.

Single-word nitpick: Maybe remove the word "fatal"?

I think the term "fatal signal" normally refers to a signal that is
guaranteed to terminate the task (that's how the signal handling code
uses the term, more or less); but a SIGSEGV caused by VM_FAULT_SIGSEGV
can AFAIK be handled by a userspace signal handler.

SIGKILL is the one signal that is always fatal; the kernel can also
send other signals in an always-fatal way, like with force_fatal_sig()
or force_exit_sig(), but those are not used for VM_FAULT_SIGSEGV.
(Those functions are mostly for cases where we can't continue because
something is in an unsafe state, like if a signal return failed and
the register state might now be messed up.)

