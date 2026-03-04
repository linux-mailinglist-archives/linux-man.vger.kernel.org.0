Return-Path: <linux-man+bounces-5234-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iEc2O95gqGmduAAAu9opvQ
	(envelope-from <linux-man+bounces-5234-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 04 Mar 2026 17:42:06 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 70E982047F2
	for <lists+linux-man@lfdr.de>; Wed, 04 Mar 2026 17:42:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8BF2F307AFFA
	for <lists+linux-man@lfdr.de>; Wed,  4 Mar 2026 16:39:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D73336F420;
	Wed,  4 Mar 2026 16:38:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dartmouth.edu header.i=@dartmouth.edu header.b="b5XB5qUe"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E61A36B059
	for <linux-man@vger.kernel.org>; Wed,  4 Mar 2026 16:38:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.46
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772642297; cv=pass; b=YzXTjEIa6a2wsMCJsECnQDyPH0GWUae4k3ndFxYk0EEpPHIO0fpJYEeeT+J4vlbTwaL1uaZgFB3+8wCayioz2Iyf86kQww8DAmWfRieM/EO0iE2O5gHI5kn16b6w4vp14dwWTE08mEh4znXQHBBVdazvQNCPvuKZzQszPVXKo4Q=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772642297; c=relaxed/simple;
	bh=TfFAAHamHIm6MUpYjFByFk76f/IVjsmcAqm/upNl0hc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=DMbmAhnHwCchbhfh2Te/x2LcuLwU+H7kqgr2SaqZYOZHgHVMLTHQMaadb+NtrRoExdxgHFC5XSL8HTwTtkCEb6lBCcTuP0iSKWVU8KRnD2SA70dxD7pmC+nshBFGsuxurXQAc86Lhockk8AmXhkjU8BPp1wh9ZSfErhnphJKjtE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dartmouth.edu; spf=pass smtp.mailfrom=dartmouth.edu; dkim=pass (2048-bit key) header.d=dartmouth.edu header.i=@dartmouth.edu header.b=b5XB5qUe; arc=pass smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dartmouth.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dartmouth.edu
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-439b7a87fb5so2238171f8f.3
        for <linux-man@vger.kernel.org>; Wed, 04 Mar 2026 08:38:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772642294; cv=none;
        d=google.com; s=arc-20240605;
        b=NHQ8dPvak5F52NfRtnKUzIU/VTloqMCh/uzVqB7p6ivexexLHjgEW/V9Jc2wYK9jgI
         OGleWjF8ot4vBCVOYejrH/jvNPCAXTro5HR3MoJoq2EX13h0Cw7ylTHGk1qzh159LoUB
         CtKAKsqhbe7EYxVJQBLeePogT3tKdYoiEIJLGzan+jd4BtGuK1YfDGMA86S4H5U/Yoas
         OpEn6KCqXbpb6/HUwN4DkZevNu0xyGmQbkXAhqzFu85jiSIsvIF90K3UM7zIpjjQFaCG
         wuoF7TMw8rx0UrwSNhSnzobQxh/lfv9e2B+7LwuDa86N8sA2nZn4wYJ+avrjMTDhKMxg
         KSlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=GPGD77Jvh7wapwgXdjZpGkxoZ8XMHwpmcVghpJ/JNVk=;
        fh=kTbk4pccRQ7ywKItoF6eFeVMUIye+84NI5zbIP4rQ9Q=;
        b=A7aKo4R+ui8oROIHVd/JcBV1h+f7obCR0H82i1hVv7do6SGDH4KbGzIVpMz9XLRR1D
         xP7x+kcK6fKYAV2vQERFEjUv4Y3ATfklC5XH52GoGN7+svpiWXszVeGfTuT4qx4ThY1K
         OcpVPBxqa0gbEbWNifHxb7XE4BMUsClqKkZQCWkz7oH5rQ1cGWDHB2VU9dSmH1fkd0Q0
         tg2Y7FZp1DAL8fLnP19/jcuPzcQmAHgfwPaiRBZWufM8MwT4ZMmU7fiHe8b2Bp9mEuAs
         gmFnAJ/yDBnDDeHO/9bKAglsJCE+OBbCaKLTqPGadX42PSgMLg2sxubcS6Pw0kKsKNQo
         aOZw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dartmouth.edu; s=google1; t=1772642294; x=1773247094; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=GPGD77Jvh7wapwgXdjZpGkxoZ8XMHwpmcVghpJ/JNVk=;
        b=b5XB5qUeeNdFchDAGI7FREHu9WyAfzu1pZ6dYJokRlq+pRN9WBTxyBkJ2idbWPPnVf
         d9YJn9F5fgjgYiFQdcGaO52e6VH7KchJZb5SbFz2tAtFt+UQk/Bmzp+SjUx7E1pH22Gs
         Cy8wdjWF2IWtnZ61kH/QVdVal9yb1uZCu+l+/8wYMNMcnFisHefSfN4PXJ7OrvqEB95/
         FSvhSs9HL8182/KEPGbnwceibRPgMO+z9zCsJNGxWpBPwxi5XfJy5ZWVYpWnwXTsPItP
         G4Yn76rPlUIrake3kQFjHS1eAh7+s+BDexUwLBRe+tZwHN3O6K66exo84nltuA+xISUo
         idiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772642294; x=1773247094;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GPGD77Jvh7wapwgXdjZpGkxoZ8XMHwpmcVghpJ/JNVk=;
        b=YLGjnxdu8fcTjFY2KlMALtXd6nJM/p5T9dpXILAC15TERNJM7XGpZ88nMZpxoujudA
         qIJmK3hQ04tUSiB/0q/fMgSaIG0yTZVLhBB5Ld5ii8J2yDAMpt/aklmVB9qx3aLW0J8z
         vMLhttuB4nbsRM1mYArKkwnptS2cILiSUxb49miH5Fm19Zy6AeSndXzkunIzzFstJaTg
         HTvZOxvSvY5dR/XnWKGku47s3SlE4nkcgr6AExabepF1ulckzU8BvQT4fi+hwtNE7Gl2
         zuvi16fjzWPXxJyHbpNbuNMvEvLA8wSaP5rvTY8CnIILWz+FWiObkZpkKLA57QMB2ogx
         Hz5A==
X-Gm-Message-State: AOJu0YzbxKIjctLO6o/TlclcJFHCMb7QCtEO2hcIgalvJnhkJZByRyLB
	Pie5u+iJnF+AYDLNTMoj2Y4sBBgF45Z3DLg3Qf/9wn+RXgi//rRuSyOJvD5kQK78Cu1lGCGDx6E
	wmK6ilPRGP3WwGzFcKM4gfL1s2IESqyPoyjZKV5NNIw==
X-Gm-Gg: ATEYQzxab+UtGeviEYPXr6+hzV+STohwAkBXPtozfyceTCoPCX13zOwEXrnwiPOdxQc
	lyj1OgJe1Ezt7EjO0UaYEt2vmwhwB9Mkb+QeVE8M+7LCq6EaYOwDR5WGITPNDJkKMkP+imjQpw4
	33/1yk5SUMqYMxsBj7OWYAaCJRGoU1OW9FEd6K7VIBce9vtZ6WuDygTL54Paf6nUlFDVfVa9fB4
	+INBwfVmdZjqLatG8UXraGSmufJV37BAJI7A0JWJV9fXizWuRRReBf2HXhWs94uZ5MlJrd/riJn
	1OXf/x0CAQH6uzcPXwfmYSBJ1KB7Hfwx8fn8Gi525rVoZUQp+V5+zkesp6t75c+LYEfhufsIGWT
	YFOpalkWowRfsiZUZ0pQJtFxof/WNT4yKrlsZ71POsEIENJHy0611sBV/YMJ/PaEP7hmvO7jzPi
	QcvpzTCr4nqn713edsVLyf4fZcoNp2rBfOKPb8WPu5BWerqmdogHRedZNH8RnU3/IATk2LPk1kA
	uYdzK1s86VjWN4/3ZVNwGc=
X-Received: by 2002:a05:6000:144f:b0:439:b929:cc85 with SMTP id
 ffacd0b85a97d-439c7ec327emr5279662f8f.0.1772642293884; Wed, 04 Mar 2026
 08:38:13 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260223160219.1015364-1-benjamin.p.kallus.gr@dartmouth.edu> <aahJQb1CMG2kT59S@devuan>
In-Reply-To: <aahJQb1CMG2kT59S@devuan>
From: Ben Kallus <benjamin.p.kallus.gr@dartmouth.edu>
Date: Wed, 4 Mar 2026 16:38:02 +0000
X-Gm-Features: AaiRm51wxo6p-ougeuKdW_ACEBBEuNjsnjvajqe3jvTQmKmj1McB5E-2TcVGUAw
Message-ID: <CAB6pCSaoZPq8q9j2A9e==v1ErKUPErTrU8NJtUMdu7+DM6n=PA@mail.gmail.com>
Subject: Re: [PATCH] man/man2/mmap.2: Document that MAP_GROWSDOWN doesn't
 affect mmap return value.
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Queue-Id: 70E982047F2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[dartmouth.edu,none];
	R_DKIM_ALLOW(-0.20)[dartmouth.edu:s=google1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5234-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[benjamin.p.kallus.gr@dartmouth.edu,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[dartmouth.edu:+];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,dartmouth.edu:dkim]
X-Rspamd-Action: no action

Thanks for the feedback.

> Okay, the patch looks good to me.  However, would you mind showing
> a minimal C program that demonstrates the behavior?

Sure. Here's one:

#include <stdio.h>    // for printf, putchar, fopen, fgetc
#include <sys/mman.h> // for MAP_*, PROT_*, mmap
int main(void) {
  printf("mmap return value: %p\n",
         mmap(nullptr, 1 /* rounds up to page */, PROT_READ | PROT_WRITE,
              MAP_ANONYMOUS | MAP_PRIVATE | MAP_GROWSDOWN, -1, 0));
  FILE *const f = fopen("/proc/self/maps", "r");
  while (1) {
    int const c = fgetc(f);
    if (c < 0) {
      break;
    }
    putchar(c);
  }
}

If you run this, you'll see that the value returned from mmap is the
lowest address in one of the mappings from /proc/self/maps.

Reading/writing into this mapping works the way you'd expect. (I
tested this in gdb.)

> And if it was correct but the kernel has changed behavior, it would be
> interesting to document when that happened (if we know).

I don't have access to any older kernels at the moment. I'll set up
some VMs later today and check this.


-Ben

