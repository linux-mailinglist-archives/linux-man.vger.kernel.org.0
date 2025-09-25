Return-Path: <linux-man+bounces-3979-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E5BCB9FD3A
	for <lists+linux-man@lfdr.de>; Thu, 25 Sep 2025 16:08:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2D31E1C247FE
	for <lists+linux-man@lfdr.de>; Thu, 25 Sep 2025 14:05:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB904286426;
	Thu, 25 Sep 2025 13:57:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=columbia.edu header.i=@columbia.edu header.b="HJIeUBfy"
X-Original-To: linux-man@vger.kernel.org
Received: from mx0a-00364e01.pphosted.com (mx0a-00364e01.pphosted.com [148.163.135.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4A3F2848A4
	for <linux-man@vger.kernel.org>; Thu, 25 Sep 2025 13:57:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.163.135.74
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758808658; cv=none; b=Q+jA/36es8b8dQ8v4skQBDbJkOv9lZzrDysmVuKC9w1BhRTF57ebJ66X0qAZrEZez7oJZY3g7C7HjvZg1ygR1lonjpf6+mWxLHGfxDJmHkbat+dTG0cuKmZW/DYPVK/Uu358lkeloYzjqa6MzNPnyLLCcKSAFe6BNvEidhyytP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758808658; c=relaxed/simple;
	bh=UUs44bT2Mv3L9v69mWFbaR+Qa4woF2m+o5xs/ajdGGo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mZsfNoePpvcRcrQnH/1On7JOdp0KaAmkUyd3sRXs2nYuPfwkoUdEzwByaFLxAo+ST16QBnwTT891gJSGUjOOVdOM/ttBuSxAQUW2rZ38HfDVPrZtLAIpZx1rJJT6kojplcr4sQgW/5GXIBlBOGbNxRj6T0vTg9EfzROe+vPpfFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.columbia.edu; spf=pass smtp.mailfrom=columbia.edu; dkim=pass (2048-bit key) header.d=columbia.edu header.i=@columbia.edu header.b=HJIeUBfy; arc=none smtp.client-ip=148.163.135.74
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.columbia.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=columbia.edu
Received: from pps.filterd (m0167071.ppops.net [127.0.0.1])
	by mx0a-00364e01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58PDSL3x028859
	for <linux-man@vger.kernel.org>; Thu, 25 Sep 2025 09:57:30 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=columbia.edu; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=pps01; bh=ACL4
	1nHkRnxFNxekdRO8UIr8suKD/pWs0Hxv8DsBC7k=; b=HJIeUBfylzGHCDCyYdKP
	YZwk3ZoiRrWLYbz9mRAsC+9U0fw3QSURH4E9f56ZOmuJpEulMfla2mcHldFdIB7h
	wQjHuqHaU7dCvnTF+ZV+8TYUtxkvXM1vJpjAtQVq84i44dxqDLgF6yizo3HRUimN
	LQ5g6ADP6wKiueUDR20MfBCmIWgEYzhRX3zXitSlq7pyQ5JMU9KC8M9eNZ37FZA9
	P4csGbGXndoI2blku8vHPVmVPT3ZW73uR8kTSAXSCjWshUHtwAFhkyV74RD4s8XP
	Kr2V7itbjv5D0VoJUZsJEea8G2cEIyGZJatEvwt79jtNg+zY3YyYXBevz9ozXZn2
	aw==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-00364e01.pphosted.com (PPS) with ESMTPS id 49ckqj0r59-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-man@vger.kernel.org>; Thu, 25 Sep 2025 09:57:29 -0400 (EDT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-798ab08dde5so16272556d6.2
        for <linux-man@vger.kernel.org>; Thu, 25 Sep 2025 06:57:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758808648; x=1759413448;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ACL41nHkRnxFNxekdRO8UIr8suKD/pWs0Hxv8DsBC7k=;
        b=aN9tkdYZQuBIKgCbyP4Q3pjd0Arfuo5Q8MgJzazVlsFeOldWBzVKYuvEVRwfDgfYH3
         UHKtZgtM3tZCqxQCFdUVipFJds5exE24rtg04lVBJD38CSozx4Bno8nTcsFLBv6MP7TN
         0e0T7ijY9RZcI8RbP5nZtzJW2JDKfYQliMWJNW8qBnuCXVl1boQORqnXrffpqZMXVQKQ
         mUeoGxfb2r5K9sAviqwc12xAzki8FDcBtKJ+rvaNsNzhOX6gjpdSB16X6PI4ms2Crh/K
         +Wnqg6CKzvIgWNw0NIhPxekRnt9jZ6O/xN93wx6oVUSGkRIgaOJglVeX1HLMTxJc0ksu
         OBJg==
X-Gm-Message-State: AOJu0Yy+0zpwT6sStmGJrKN446MARkgUQIstEXQRVsEo9/TpPem6zAGA
	bIMVTQVpO2bRRJyxv42Hd6fRt/nhxVuWW08NDFeAwojVj7nkQH5GmkTETQD4U9BH+DUMKZ5B/gl
	W8ROeQ1v/KVisTlfG9jOlUi9GLy+lQd53u93esAXkUpTEJsM9hYLGhBDfY7HYvu65LYxLapOQ1Z
	XFDp1d1Wk6pKnWdVYiug3nN31eKN4Wg3Bv
X-Gm-Gg: ASbGncvfZDvJ/Wk9EY9U2oM0bgWCuLV0ywdo6YGfhRFDR5gcEtR4zS69nC0DICwcK5C
	lzSxDeuqp928FCjJzDH2NCr5YtbPPehWItz+PTj3jDjHWZ8RMXrTvWBpuRdfCqGHBSxn1KpEyQb
	bdh/XO5dI3WgFvjBMiiA==
X-Received: by 2002:a05:6214:4c47:b0:802:ef74:d792 with SMTP id 6a1803df08f44-802ef74db6fmr28068146d6.67.1758808648158;
        Thu, 25 Sep 2025 06:57:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFd8z+j7gTiL4HAR09oCy62kAXGT2Vb6Gkw1BaEnRfjsHlko+B5pDuw7mqfd0jApPK4uC3JpuDVwJBYMRhv4fk=
X-Received: by 2002:a05:6214:4c47:b0:802:ef74:d792 with SMTP id
 6a1803df08f44-802ef74db6fmr28067796d6.67.1758808647727; Thu, 25 Sep 2025
 06:57:27 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250922035934.446271-1-kele@cs.columbia.edu> <zgsjt2kpddfcso3gpp4jns5bknrquclbaswxbzvtoqwpi4aug4@znkbh7nsxmua>
In-Reply-To: <zgsjt2kpddfcso3gpp4jns5bknrquclbaswxbzvtoqwpi4aug4@znkbh7nsxmua>
From: Kele Huang <kele@cs.columbia.edu>
Date: Thu, 25 Sep 2025 09:57:16 -0400
X-Gm-Features: AS18NWDJfzhmVhTaGyLNVLeungl3RKFCUJJsCoBmD-uoNSv1l6prZLTpK_vX7wY
Message-ID: <CAOfLF_+0UbNedKgbNY+5W81WWgU7X+7yg4pzYD_5U4aJKybwsg@mail.gmail.com>
Subject: Re: [PATCH 0/6] This is a set of patches to fix grammar issues
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI0MDEzNyBTYWx0ZWRfXyULJ5IRBzCUS
 43XpgGPbPDaSkCXF3CJ8r+p8iyqVeF3SKQpXHMjo0gKI8yWh1RdqsIXoKXwTnWBZISYrBFZvdTd
 JWzChPGTkAeLRPcYGWEzcNygwbDwEdv6ZZILNn6Rwl9Z2gU3gd5ptDRWQ4YPuzbXpJ9XgKhu3ax
 KzvABXxcve0uGsDOYtYETXesqrBL4YCBD7AEowHvA+muB4gbmYH2p0MI9qw2lepbJFrog+Ryow3
 9qGz0w8KYPlfFC1Okf2vH7rkC4MuA41fUOCGZdwAP1Umeeow4tgc3dF5gpWLEuukVtBn7BHt+NX
 IA6DI9g5k0PXmr+MCRBx0kbU4LKcGLtxbBnn1PesjHMVtg3j9M7GMl4Hm8KbkMzV4Z+xQv6lVwd
 tYMgep6+
X-Proofpoint-GUID: KZw3CBTCrjSCbfg0GT-DU9CIRQQlkov-
X-Authority-Analysis: v=2.4 cv=T9GMT+KQ c=1 sm=1 tr=0 ts=68d54a49 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=861-jTDryjZ0CTSc:21 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=MEjK9-KKAAAA:8 a=VwQbUJbxAAAA:8 a=0-GGiZ1G1WSh0m9nTg4A:9
 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22 a=wDCLW6yMUrMVbYbmd6V3:22
X-Proofpoint-ORIG-GUID: KZw3CBTCrjSCbfg0GT-DU9CIRQQlkov-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-25_01,2025-09-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 adultscore=0 bulkscore=10 malwarescore=0
 clxscore=1015 priorityscore=1501 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509240137

Hi Alex,

Thanks!  I have re-submitted patch 6 with the in-reply-to reference to
the v1 patch.  Please let me know if it does not work as expected.

Have a lovely day!

Regards,
Kele


On Thu, Sep 25, 2025 at 7:39=E2=80=AFAM Alejandro Colomar <alx@kernel.org> =
wrote:
>
> Hi Kele,
>
> On Sun, Sep 21, 2025 at 11:59:28PM -0400, Kele Huang wrote:
> > - Patch 1: Fix grammar in man/man2/getitimer.2
> > - Patch 2: Fix grammar in man/man2/setns.2
> > - Patch 3: Fix grammar in man/man2/unshare.2
> > - Patch 4: Fix grammar in man/man2/rt_sigqueueinfo.2
> > - Patch 5: Fix grammar in man/man2/msgop.2
> > - Patch 6: Fix grammar in man/man2/fanotify_mark.2
>
> Thanks!  I've applied all except patch 6 (because of Branden's comment).
> If you want to re-submit part of patch 6, please do so.
>
>
> Have a lovely day!
> Alex
>
> >
> > *** BLURB HERE ***
> >
> > Kele Huang (6):
> >   man/man2/getitimer.2: grfix
> >   man/man2/setns.2: grfix
> >   man/man2/unshare.2: grfix
> >   man/man2/rt_sigqueueinfo.2: grfix
> >   man/man2/msgop.2: grfix
> >   man/man2/fanotify_mark.2: grfix
> >
> >  man/man2/fanotify_mark.2   | 14 +++++++-------
> >  man/man2/getitimer.2       |  2 +-
> >  man/man2/msgop.2           |  2 +-
> >  man/man2/rt_sigqueueinfo.2 |  2 +-
> >  man/man2/setns.2           |  2 +-
> >  man/man2/unshare.2         |  2 +-
> >  6 files changed, 12 insertions(+), 12 deletions(-)
> >
> > --
> > 2.51.0
> >
> >
>
> --
> <https://www.alejandro-colomar.es>
> Use port 80 (that is, <...:80/>).

