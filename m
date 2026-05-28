Return-Path: <linux-man+bounces-5618-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2DMMBjw/GGqahwgAu9opvQ
	(envelope-from <linux-man+bounces-5618-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 28 May 2026 15:12:28 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8522A5F2851
	for <lists+linux-man@lfdr.de>; Thu, 28 May 2026 15:12:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EA4903050F60
	for <lists+linux-man@lfdr.de>; Thu, 28 May 2026 13:06:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DE313EFD0B;
	Thu, 28 May 2026 13:06:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=man7.org header.i=@man7.org header.b="AUzu37a4"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C40AA3B6359
	for <linux-man@vger.kernel.org>; Thu, 28 May 2026 13:06:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.128.48
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779973610; cv=pass; b=oV4EI/YlO4gNfarUu0Lyc/7PRh7LyLKeIqWLYptHz0Vp/WInRRz8Q8NrDqklOW5bHCMBQyPWQFv2zOM7/DMCVRG4DXduq6rfP/fxCud8ENAySqBF6gkjqKcgmW5XcCf/oQ8Ez5mG/UC9s1EFemdKpk5ZaoaNeNtCY4xn9qL5Wts=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779973610; c=relaxed/simple;
	bh=AP4w+kcECRF6deUkhpygLKOwtXsjkSRbYvn0EpaAAiE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rvBg0S9vZBQfIV1VS+bwjO7V3xpaXFUY82xidLPxQTZ6Om3gA/Uo/O/O5YR2HogKmqQ5ga/Z1tqFgqLKhyAgFGvTHRJxDSrZSYF1mr9bfCrp9vX70v9weaoggbAUfWjFyz0xf0kyf5ZiaehclDCvYcZRn1rEZgqE2pRCaw6mfgs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=man7.org; spf=pass smtp.mailfrom=man7.org; dkim=pass (2048-bit key) header.d=man7.org header.i=@man7.org header.b=AUzu37a4; arc=pass smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=man7.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=man7.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-49041e84237so53663775e9.1
        for <linux-man@vger.kernel.org>; Thu, 28 May 2026 06:06:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779973607; cv=none;
        d=google.com; s=arc-20240605;
        b=RJyr62dkqsOIO6BQghhRW7mC8fQvOWRHALAdt6CSO6Dq3f4w+3wOC9mWsjDIuLxwpx
         kdi+YkaZYTu/CIQCc5fmeV/L+3qZbFzirxxBkH//SZQh48Z67nRdBhdmmcjjW8QlkPZG
         hbNFOkYtVUJuoRgz2XpmT44Xz93KL0KIZJqTSmcBtXN9L0NJwckBLC0SUP+9UYQgiM8i
         sndSE3El8mpNq6Rf90Uim9BDAiHUn6WhNfWoh7kI08lxZo9rejNCFThfkIwt5cMFzr9q
         gEjRZo5KfeDZT9yhgxnWecS48XCj96L7GVYY0cq9v4OXevbjxK2sCXoGCyHRRJ1ni3ho
         BtZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=yYdpWfUJntppaD19fkeEzC0kW4I+fN5pXJnZ1TQ7o3c=;
        fh=Fwyl30e8p6At0u6ZDO56Qp9ECRF9CZFFVR4HTAIaCcI=;
        b=kM9UcZx028fUIwvXVYD+JR4/hRC0gqFcGLzyPSvV18+yOqqPO9G0JPd4fb0+EtTK55
         E/1lNEb3IpgIS1rWoh4QlqZX5SQvZFF437HRFx6LvlAOoyMjGUDoIaa0RZQufkOiHeC7
         JLF6+DyTU3yUtRqaNCQKtK6czSb54DaNN2GCb28Qy1nMsrU+LUnoVsHm3dxtgtcnV+YC
         D8XlvgIBkoqyNwUiqv7mGHHyasamZeGm3w6cHgLAQ62olo5HJ3M/Qr0gm7T55TLQO2x8
         Ql7iZ5MMuuu+33z7NTUOS8c2zUwrawXdOM2izK0PKNRXHrewOX+HBe5p1AqqcgM3q0X2
         lrmA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=man7.org; s=google; t=1779973607; x=1780578407; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=yYdpWfUJntppaD19fkeEzC0kW4I+fN5pXJnZ1TQ7o3c=;
        b=AUzu37a4Qc668OMlMLe5XepAO+BEqDk+DKY+RpX8gIjIHlwrsy5bXfAR2z7SRoiP0F
         piXJWkK9pneQZbKgnbgj3pclU9/gRowB2X4XsONGBz+6uqJupRsBCiJveh8wMnpC5lRw
         ErggiNAzznhZsVpg+lpVauYe8tf5A50XASCkb3pvMbD7cFM/zV3msytpDRqtAFpzAB+2
         YtAa2DHgoNaCyIp9X/VwPIPuZExdsNs5kH5OaYTNoq8O+slGmSlP/UxMvuwn7/eVaCAb
         zu1BH9HRlJKaikecxueXOpsthmtHS+8jNQMUhNCQ8XzUuKdXy9dcPlrUtHmOtP4kRJt/
         iWkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779973607; x=1780578407;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yYdpWfUJntppaD19fkeEzC0kW4I+fN5pXJnZ1TQ7o3c=;
        b=Pk2bUzQ3CWlP2erH9KvK24+puRdn20de/gsO/VjGvaLBoM8HKB9MIivzuvLECEoJ7K
         iT5/Oz+xAhaZ/8NMbmxQFk0deMTheZKwJ3TIYFpQIG8eZXDml5Dok87m5QrUh5XdNiPv
         M4Xr954T6qkM4O87GXjPHCCEb6qbuzrqJ4Jn/jxVICBX0KULtVW5MaZlL3EyohECqWcd
         hqfjlNlP1O1VVNYomL8pB2YlvLUUW3Iygy5WgqK9w9LXduPF8enZn1t7q4Dc8rliEqul
         ACHYNVymLXQ85jow9zSSfZx3/Qjt0zx3sTfll/zfBLw2oLNJbW0ynn0vLo5k3pnTLPEv
         nY5A==
X-Gm-Message-State: AOJu0YxC5HjQQgyjW3G7ufgbsgSlkQrEOp5jqARAR37lKNG54aTHxne1
	8dAFDos0FIn6KFYrARzEwbpBJLaG7Wq3Lt2YWep1Z6P/RAh9fWwLECnNUzqhUdaN8Oy175PL5md
	PK0qqskWMeJp564mAshucDuQfI/mDz/3BwvjaNsL4og==
X-Gm-Gg: Acq92OHEFk3Z2a1UZV/en7aiiJcQ3GKrO082OuJIENS+1aSOZdIue/pl/wnmR7kkEDo
	SylO4L+ZAmjpi5fzEnotNmROpXvmmPjKs74vgCRkhnBISm/pyBrO9KzvQoPTQWciJqE5TD5opin
	5mX9PtYyokg0KX48nx54xdK54nWbCUlzT0QH1cT2V104/GNFl3Yf3Nloo2G96QaYpxadC8p5FAx
	tQEj7j7GRdAs5MMcL9Q059N5rnR3cvHev6oP0od8sew/unFp5AKXK/6IFnuf2fGZlJej2XlwIcJ
	Ymxou6p0/wmmOw2dR0MrVoIpJqNxnATgn3wLGIDqKOvGaBJWxx6R7aYW9ZjDFE6jd8gU106n8Gk
	MiTzO
X-Received: by 2002:a05:600c:674f:b0:48a:5339:a46 with SMTP id
 5b1f17b1804b1-490947a9a16mr22504085e9.9.1779973607011; Thu, 28 May 2026
 06:06:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAFs=pgbvWhm7KUcdyt=ELT66FNuLNjqh3Ek-1d9V6sY2npJ5jg@mail.gmail.com>
 <ahbxJGIK8Qf4AqVl@devuan> <CAFs=pgYAfonz99yGyoS+h76v7YrfT8=f4yg6zQFqDPgm8XfsoQ@mail.gmail.com>
 <ahcvtYzeadqmhk62@devuan>
In-Reply-To: <ahcvtYzeadqmhk62@devuan>
From: "Michael Kerrisk (man7.org)" <mtk@man7.org>
Date: Thu, 28 May 2026 15:06:10 +0200
X-Gm-Features: AVHnY4LTCfPuwtXhBfau_tOA_XACne-fXBJEfDp66H3tCOLf7xgrZM9ipSY5TGk
Message-ID: <CAFs=pgaaDgMULDkwrewtegogQQCZjCFqEPUEkAfKpT67rEWZ1Q@mail.gmail.com>
Subject: Re: Mangled function prototypes (phantom arguments)
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[man7.org,none];
	R_DKIM_ALLOW(-0.20)[man7.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5618-lists,linux-man=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mtk@man7.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[man7.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[linux-man];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 8522A5F2851
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Alex,

On Wed, 27 May 2026 at 19:58, Alejandro Colomar <alx@kernel.org> wrote:
>
> Hi Michael,
>
> On 2026-05-27T18:46:06+0200, Michael Kerrisk (man7.org) wrote:
> > Hello Alex,
> >
> > Thanks for responding.
> >
> > > > The problems have all resulted in prototypes adding a phantom first
> > > > argument. See for example this prototype from read.2:
> > > >
> > > >        ssize_t read(size_t count;
> > > >                     int fd, void buf[count], size_t count);
> > >
> > > This is valid C (except for the array of void, but that's a separate
> > > topic).
> >
> > As we see, I'm not keeping up with my C :-).
>
> To be fair, this is a very little-known feature (even though it's a very
> old one).  I (and a few others) are trying to make it more well known,
> as it's quite interesting.

I don't think the Linux system call and C library manual pages are a
good place to promote this obscure GNU feature. It is confusing
people, including me. (I came to making this report because several
people have reported this "bug" on various pages rendered at
man7.org.)

Please consider reverting these changes. These markings use
little-understood, nonportable syntax. The manual page synopses should
be in standard, portable C that is *easy* to understand.

Thanks,

Michael

-- 
Michael Kerrisk, man7.org Training and Consulting
mtk@man7.org, http://man7.org/training/
"The Linux Programming Interface" -- http://man7.org/tlpi/

