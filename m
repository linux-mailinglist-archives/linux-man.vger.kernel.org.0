Return-Path: <linux-man+bounces-2867-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E140FAABF40
	for <lists+linux-man@lfdr.de>; Tue,  6 May 2025 11:24:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1BCB93B9ED1
	for <lists+linux-man@lfdr.de>; Tue,  6 May 2025 09:22:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55CFF24A052;
	Tue,  6 May 2025 09:22:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CskVJfnC"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B178C262804
	for <linux-man@vger.kernel.org>; Tue,  6 May 2025 09:22:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746523332; cv=none; b=BaqtNB2nPzk4XCblC6lWA1nynGSh7y1dYyvRuTX/Uh/tLcdN6Ciz32os0o6Hc6DFLKRVMM5uB9skfPxWYeCWuHoNHGjOLytiWC5PjdTNP0mdK08cc6ioJmxCpw2UPdB+1aDcOId0DqrDAkIVBwtTsEEE2aOggoq/vh8Z+btsJ3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746523332; c=relaxed/simple;
	bh=BZNOTH/WbxBPw04LNXnfgt0IMDqdi6KLA9vh+3ADde8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZKg6xHA8L5nCJ+9xyJo7Ph0jTMenO0zqwIDBOyXPXgpsK78461lU5geaC6lTBNypNHpnt+HNTmprKRguCqIkQOgZx83h+GyovwRUqbZWeQLbCC84NijTghe6BO/YQCBpRTtdeTfX7r2vg2buPP1EWWz/ABSR/TMjNTppgQug4ro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CskVJfnC; arc=none smtp.client-ip=209.85.216.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f52.google.com with SMTP id 98e67ed59e1d1-2ff6cf448b8so6973716a91.3
        for <linux-man@vger.kernel.org>; Tue, 06 May 2025 02:22:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746523329; x=1747128129; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JwM2aQM3Vq4+LOFMywHVHTuLCh+PzPaVbHk8xt2pmHk=;
        b=CskVJfnC3nrHZneNlW4wbKlYTbse7fOWegIxXJm+nlihzqqi74IBk4IRAPyAwlvpyy
         HJCX0E0mhH9ETWOzPH8BniJsfd5or+XznJF9q2gND29uEx9rY+UADEaxyat4hFetLcOK
         9OZ+jnzMgES03kWAnCUVGdBOH4vJ3f7I+qlhpoVd1saT2zu8aF8QHYjMNKx7LdwnMQoL
         SBRuEU7vAsUrE7oUZHnzZJqwenrttgC9r9So2yXgG7sdbZXk/Glv8vrrQyJkKf0VOcV9
         Zo5+PhAQ4cpNTTlDNQOo6ztYicxrjYik5SSVcEMCDixv1stWb2qjUQWFos/foXJV+g6J
         lW3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746523329; x=1747128129;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JwM2aQM3Vq4+LOFMywHVHTuLCh+PzPaVbHk8xt2pmHk=;
        b=E61ccmY/IIOioVvQxEEyBrACX3LhW7TaGe9i04qzw03J3X1BZhv/2zN2FtyU5ULgQs
         jf1Cl9t48yQouaVNJcTZq8dYFPVX3twz6B+a/DFHDJO+xFutNT4PfHbvCqwUSAJQh3fk
         9A7ctQBOTo00Q7zBYEKDVs4cIUfBPF8MiRQlQeT+sxDbWRfqKpjHvCUg/lgn+Wbvxkyt
         sQ1fYvqoiVCT75g2RE68AlBw4jWSBblNKRlFwHMvzjS92KyYv+FCKNhRZYMYdreuKp91
         ChZtALjNpARxGCO6lP6GVYHkww+DSM7ioqpQKri9IM7wPxDC2WpdWiVHYuTeVv7cIZAv
         PGwQ==
X-Forwarded-Encrypted: i=1; AJvYcCUlITZUEmgdNOjVdaH9JF5L4QDt7NdOfdRSbKZdjeXLt/C48tFEjoqFGA8qeG6qDKSNBDNsyXNEpZY=@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1Gp+ZlGiwd5Asx8Fs5t0/9V/M8jhpCBt+SLkRQTdOGSS7Hy8E
	N4q4k4A+VF9SarUCYjMtf/yI3ODn9b2rGTfCtkE11YPDZBZx0bM/lnxLVyD1542sOAeB4NQ0l0s
	CLnKYMw6RP9CKDTcK0P50ivIlTN+EgRY/
X-Gm-Gg: ASbGnctBRWD7cvx68+e2mwMk/bsKxFv8U2MbQxnj+7i6klav2MKI49IA4f6F7hNucUQ
	jpkChpTDM7OYSTme/NI6jC5JC3Ni6etfggQSoVt5Y64l1vwVBKW0Qfltq6eyN/iganTX1xal6bh
	h1gqqBMa2wL4t382/8MQ6AAFmNexlG97mZ
X-Google-Smtp-Source: AGHT+IESfXqGUNfixzWlEZN+Ds7MIEu3YsicBXpwcvf2fYehnj/LULBIiPc/3WximoBqmF8Nfc/vLcMOv5XWaGCWO/E=
X-Received: by 2002:a17:90b:3c44:b0:2ee:e945:5355 with SMTP id
 98e67ed59e1d1-30a7e0b8a0cmr2681875a91.19.1746523328687; Tue, 06 May 2025
 02:22:08 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1739389071.git.amitpinhass@gmail.com> <c45f3d934ec20ec5fc813400a4a56079c2241ed1.1739389071.git.amitpinhass@gmail.com>
 <wwjzzwjpbh2ayydhorwgs4jhycjgwhxfzlk5tfym7dxx4w7kll@yaspehl62eik>
 <20250212230210.3kkixsk7bi3cdc4d@illithid> <lvhwk4czikqmx4acydi5t5q3nshvgdipedz6xkt7auvz5mnmwp@auuzri4hvsrn>
 <CACGkJdsEQENG1ZOQ14iueMzh4p5ywDenYp5eaN-itvrFfK+kmg@mail.gmail.com>
 <37qabjc65x7co7f3oiibpgwtvhnigk5z7tpmmzgrjhisi4nqmz@ypx33dbbltdn> <856467f3-73b4-4b45-a2c4-f7b4f44b1de2@redhat.com>
In-Reply-To: <856467f3-73b4-4b45-a2c4-f7b4f44b1de2@redhat.com>
From: Eugene Syromyatnikov <evgsyr@gmail.com>
Date: Tue, 6 May 2025 11:22:05 +0200
X-Gm-Features: ATxdqUFFH72WhPfj8782xeSzJMukWPzq6ttIj7sVjO7WOQwgprfqfP1X6kzz6cQ
Message-ID: <CACGkJdsWdEC4bxLErb5uagX1ytGDLsjny5ZXUgiitJcHpyr9Cw@mail.gmail.com>
Subject: Re: Removing in-source contribution records contributer
To: "Carlos O'Donell" <carlos@redhat.com>
Cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org, 
	"G. Branden Robinson" <g.branden.robinson@gmail.com>, Amit Pinhas <amitpinhass@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 9, 2025 at 11:15=E2=80=AFPM Carlos O'Donell <carlos@redhat.com>=
 wrote:
>
> On 4/8/25 5:25 PM, Alejandro Colomar wrote:
> > Hi Eugene,
> >
> > On Tue, Apr 08, 2025 at 08:00:19PM +0200, Eugene Syromyatnikov wrote:
[...]
> >> In strace, FWIW, we have the following:
> >>   * the copyright notice looks like "Copyright (c) <year>-<year> The
> >> strace developers.";
> >
> > Hmmm, interesting.  And actually, it's more accurate than the usual
> > copyright lines.
>
> The value of the line "Copyright (c) The Foo Developers" is to indicate
> that the works are copyrighted, and it avoids anyone who infringes from
> arguing they "didn't know." It is in itself not a copyright statement.
>
> What value is there in maintaining the year?

There isn't much, but since we have automation in place that ensures
that the files that are touched since the last release have their
copyright notices, it has been implemented in a way to provide the
years as well, to have the same format as the existing few historic
copyright notices (that we tend to keep, as a tradition, and not for
some technical/legal reasons).

--=20
Eugene Syromyatnikov
mailto:evgsyr@gmail.com
xmpp:esyr@jabber.{ru|org}

