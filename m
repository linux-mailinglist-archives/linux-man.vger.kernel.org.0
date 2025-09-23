Return-Path: <linux-man+bounces-3951-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EFC2B96BFB
	for <lists+linux-man@lfdr.de>; Tue, 23 Sep 2025 18:08:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 646CC18A8577
	for <lists+linux-man@lfdr.de>; Tue, 23 Sep 2025 16:08:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFD75274B5E;
	Tue, 23 Sep 2025 16:07:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=columbia.edu header.i=@columbia.edu header.b="pLApnAEB"
X-Original-To: linux-man@vger.kernel.org
Received: from mx0a-00364e01.pphosted.com (mx0a-00364e01.pphosted.com [148.163.135.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2C9D26C3AC
	for <linux-man@vger.kernel.org>; Tue, 23 Sep 2025 16:07:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.135.74
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758643642; cv=none; b=earKxl/owvIkYycIO4p0yzgsj5yJI8okC2h6TKyxFvYYbm+t5Zj65Bu3lNHz7qP/pMwAsGFftKTmBrwmPV/krJh1WPSwRzZnPOwi2QCAQmb63qKPPcfArrGv8zPOYMnefRRqqdWSZ+kJ+k16sfYzzKrSeHL3Jy7IJbgjWBQADYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758643642; c=relaxed/simple;
	bh=D2XOM8tDT30PtdtGdvYHDY3H2h0OqFxJ7Cc5j5LRKk8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TeZC8h4RFKefhipCFQ/E093o2NZySdC1S0wHiff3uQTYqnyXQfo7Gg4h838AcFlcJjRzKqBa62FtRwe/xp9JDwaqgLKmHKzgbXd9TqNRetzdFuY7xkvdpshHDZXvmM/8tNfCkQT3y5v91vhK2Lms+BWMgR411eizbRQ1f+TS67M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.columbia.edu; spf=pass smtp.mailfrom=columbia.edu; dkim=pass (2048-bit key) header.d=columbia.edu header.i=@columbia.edu header.b=pLApnAEB; arc=none smtp.client-ip=148.163.135.74
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.columbia.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=columbia.edu
Received: from pps.filterd (m0167072.ppops.net [127.0.0.1])
	by mx0a-00364e01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58NG4FxL016986
	for <linux-man@vger.kernel.org>; Tue, 23 Sep 2025 12:07:14 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=columbia.edu; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=pps01; bh=Wx+4
	YiRD7t/ang5Xu1O1e+2thDkZ8cwQaCn8qIPLhVA=; b=pLApnAEByzyox1dUkUGh
	CulPvvGewP+0WsSSAE7DXlw67v5ShsD/h80ZGUohVkkY6Qc99cIxGBYuAbZQvcv/
	xKV7eYVztUyWgGajOKOnuDQU9IHbpcgnXc4dbs++F4aItWBL7uk0jgeFcouDt6k7
	+oyi8Ufu9DPB4Ka2z9zwobssV/8YboE52j7RCoALcjoCv/s24CW9jJOTZkldmf0y
	SanEHWryAlh5bVSU2lVhrgW2CGG7h6ikVH84hoaGcD2kdfHixThTgYB8yON1dajk
	Vxko/GtSgfDCt8IeZpnzXsOAVcz46pdx2hjTTAwGsUNMlosWyMxeOOiAS89oUXjj
	nQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-00364e01.pphosted.com (PPS) with ESMTPS id 49b9hq222a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-man@vger.kernel.org>; Tue, 23 Sep 2025 12:07:13 -0400 (EDT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-78f6250f0cdso93580576d6.2
        for <linux-man@vger.kernel.org>; Tue, 23 Sep 2025 09:07:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758643632; x=1759248432;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Wx+4YiRD7t/ang5Xu1O1e+2thDkZ8cwQaCn8qIPLhVA=;
        b=MMkusI66V0uIrmdQPbTfYauHOXO5lR/M9mXw+nzu25NNRjwg5IQsvR14ued3qUyzYT
         SrHx3T4dg1m+Gr0yqHyg0wPkSNwh6OPTsilezneK7nMR2WyPZtjvyAtcuxOtZ6wjFWkp
         o+LaiaqP6+XuJHtlJnYkyKzYHdTDD8yOAd6Xbw7UXdOdYg+XGdVV4FfljjEWf9AK9Ya/
         ElnwE9NF4LgTOIjtZeTrSJaKlaJ+kg+kPqtjh6D6z1vX3ZT8jL5fDcdPmRU7S/zLHAxl
         KRcVmeX0jiugFp39PW/TDZBdoICAT9rfHx/7ndpijK2tf33RkuKkPL1qMjWjDOsqX9q9
         0Hyw==
X-Forwarded-Encrypted: i=1; AJvYcCXbH9K9skrp3sx9j3+N5C1jjOWK3wKJATimR2EZAPKyZOv8CsXzXB7/7mMaLKmr13Nu4DYRh7EQKZw=@vger.kernel.org
X-Gm-Message-State: AOJu0YzazyVXNXUZ8/n3y/rpl8ZgY+zAJsIZ7NBrxvPztwcVjckvcCOJ
	z+FW2RO3eb/7fXbuFY6zwTg3DNR4I6/WC25ysuAodOvYEHVrfVKD3F4rYv/TX7GP5HNYWrda3Ox
	KVLeZjRbSsRGmQa5DL7PaBELZQy8Jf1EgxsWjMTFBGZCBKLi/D2I6eVJluKjAMZdGC0PNdRtbtL
	inL0efKaWPaDRLE8Cdh9S5nNb9YaVGgK3WPP+dj9v2D0g=
X-Gm-Gg: ASbGncvQLIGzpWs55FyzC7mP7sNpWMAyPQjSPmcfuCv4+etDPsXLWco9iBukpYhcnfw
	FGVgxuINUZAYWmFuw1zdUo6UINQuwFRGbYO8gW+7C8Ew1JW+/xiwCdXxQVXDyUIbmZTYsh1EYKN
	uA8kap2ZT7MUVJQR2pNw==
X-Received: by 2002:a05:6214:5184:b0:7a2:7dd5:a529 with SMTP id 6a1803df08f44-7e715457b81mr34961526d6.32.1758643631995;
        Tue, 23 Sep 2025 09:07:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG7uOm1D7/dc0sWogl+0JZ7P6ynDYgw5cUpuixUyk9fYnBsik6ujrylA3Uq9JLdMnk3zPpD1Dx90ng2XWtAERM=
X-Received: by 2002:a05:6214:5184:b0:7a2:7dd5:a529 with SMTP id
 6a1803df08f44-7e715457b81mr34960796d6.32.1758643631285; Tue, 23 Sep 2025
 09:07:11 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250922035934.446271-1-kele@cs.columbia.edu> <20250922035934.446271-7-kele@cs.columbia.edu>
 <20250923050231.3amllj7nlhh55mfd@illithid>
In-Reply-To: <20250923050231.3amllj7nlhh55mfd@illithid>
From: Kele Huang <kele@cs.columbia.edu>
Date: Tue, 23 Sep 2025 12:06:59 -0400
X-Gm-Features: AS18NWBfNQylEyurccMduhdbFAMWTorsqKJSLK-Se6oNjsctlAGWZnO1TKNyBtw
Message-ID: <CAOfLF_KthRz5so6_SZje=48mYFQspJ=fdT7M=1b3QPCT=t6B8Q@mail.gmail.com>
Subject: Re: [PATCH 6/6] man/man2/fanotify_mark.2: grfix
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: alx@kernel.org, linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDE1NiBTYWx0ZWRfX2cxpOL/fLAFP
 ZZjGKOwbNHw+LsEZJ/xwb7VS5vVx1yRhqHqm2ugqzazQkGanL97dWBZxBm/iRDEJUhcm/bZBMyY
 k1sU8vgIcY1bHwJjElz3NfUordfZId+R3HvbgGmLCQFV9IgiF8INEtk+kmjaoEvkCfjeN3UcQkv
 eA4r5WGEtNelDziYdEGkL+WBgJXxJH7dD2THSly42rXo08k19M9wIzwj9GxXWOUTJRsC8gVu2d5
 GUNEsnRCE635r0bdrv1XPN0OQpXauzV54OSkqDZhfKcp57ymYgGgQJ0TBGsbkFCS/RyPcs9cvKj
 wTd5EWiCJYNqGhqwdfcEhSnyaN+a1PXIOp7XWj9QY4t1G31hEL44RTFtK9zJDaMz2R3cVTGVA8c
 SDqpc8DG
X-Proofpoint-ORIG-GUID: -iZG2cpM4AS3Btcr3dN7LB0GZegzJCxq
X-Proofpoint-GUID: -iZG2cpM4AS3Btcr3dN7LB0GZegzJCxq
X-Authority-Analysis: v=2.4 cv=OcmYDgTY c=1 sm=1 tr=0 ts=68d2c5b1 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10
 a=jJrOw3FHAAAA:8 a=pGLkceISAAAA:8 a=FZD4xpgWysOo5oWfWEIA:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-23_04,2025-09-22_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=10 phishscore=0 clxscore=1015 priorityscore=1501 spamscore=0
 malwarescore=0 suspectscore=0 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220156

Hi Branden,

On Tue, Sep 23, 2025 at 1:02=E2=80=AFAM G. Branden Robinson
<g.branden.robinson@gmail.com> wrote:
>
> Hi Kele,
>
> At 2025-09-21T23:59:34-0400, Kele Huang wrote:
> [...]
> > -fanotify_mark \- add, remove, or modify an fanotify mark on a filesyst=
em
> > +fanotify_mark \- add, remove, or modify a fanotify mark on a filesyste=
m
> [...]
> > -adds, removes, or modifies an fanotify mark on a filesystem object.
> > +adds, removes, or modifies a fanotify mark on a filesystem object.
> [...]
> > -was not an fanotify file descriptor.
> > +was not a fanotify file descriptor.
> [...]
> > -This error can be returned only with an fanotify group that identifies
> > +This error can be returned only with a fanotify group that identifies
> [...]
> > -This error can be returned only with an fanotify group that identifies
> > +This error can be returned only with a fanotify group that identifies
> [...]
> > -This error can be returned only with an fanotify group that identifies
> > +This error can be returned only with a fanotify group that identifies
>
> The above revisions' correctness depends on how "fanotify" is
> idiomatically pronounced.  I checked, and Amir Golstein pronounces it
> "F. A. notify".
>
> https://youtu.be/PNZmegl63hM?t=3D94
>
> He seems to be an authoritative voice; I therefore think the foregoing
> revisions are incorrect.
>

Thanks for the clarification!  I agree that if we spell it out as "F.
A. notify",
then "an fanotify" is correct.

Regards,
Kele

