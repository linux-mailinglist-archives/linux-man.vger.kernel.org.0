Return-Path: <linux-man+bounces-3097-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 49E7DACDD5E
	for <lists+linux-man@lfdr.de>; Wed,  4 Jun 2025 14:00:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 13F2717855E
	for <lists+linux-man@lfdr.de>; Wed,  4 Jun 2025 12:00:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C7191ACEAF;
	Wed,  4 Jun 2025 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="DyRdcPiy"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E3D31DED6D
	for <linux-man@vger.kernel.org>; Wed,  4 Jun 2025 12:00:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749038434; cv=none; b=hGTA/OvGWRhCOjSz9ewOFOD3gDeRKvYKSV5sODkLUwsHyj76eml43YP/DbJC7dmIxrTCky69Ok9JYrSI9WhlecFxYALoxTmqqCrES/fv2E+mRQ3hB/I0BHnM+KBgNmQ2izA8eI7EIN+JPYsQ+LupXlGKBBzx7u0un4t91ooWYR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749038434; c=relaxed/simple;
	bh=TRoe1pMAH3xRGNAhr92iDGdE1up1UNbk4x3y0vLzSM4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UZP5y8R2Ux+Ox2ggoWuiVaP3KgAZpMSTLYTY6o0Dely3xQBUqRK9rZK5MQ/ZF/ljT17ua5FcTLy1H6rafmouX4HzXC+gU3Rwg+mxeDG4lBZ2T9R2NG1owMo0XYehwY0rymdquc4ha6MWUcImlrT/v5b052uIfdpJ8di4NnGcg2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=DyRdcPiy; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1749038431;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=TRoe1pMAH3xRGNAhr92iDGdE1up1UNbk4x3y0vLzSM4=;
	b=DyRdcPiyc2w98z4oFE5r5j2c0QCDEXS70WnrcrOY/MSF+E5gcKWOKMrY46P7Tb+/lBPFo5
	OXAB0bKVLsdOuYF9pQxLkAIgPQt/AwmmsEnslni/Wql3QlneX4H4CdxJ3mbmqwdttLh45U
	rMRIBos9/NjfuifADK3U2tTq0RswLx0=
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com
 [209.85.216.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-647-Drj3f3g5N2eEu0NHlrA4qQ-1; Wed, 04 Jun 2025 08:00:29 -0400
X-MC-Unique: Drj3f3g5N2eEu0NHlrA4qQ-1
X-Mimecast-MFC-AGG-ID: Drj3f3g5N2eEu0NHlrA4qQ_1749038428
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-31315426f13so465864a91.2
        for <linux-man@vger.kernel.org>; Wed, 04 Jun 2025 05:00:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749038428; x=1749643228;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TRoe1pMAH3xRGNAhr92iDGdE1up1UNbk4x3y0vLzSM4=;
        b=ZHn8eBB1sM+ScDuCvYLapKbTbPwQbGdy88ntrWfZmhGCGO9y0yiHBG5gQJvFIGKxDN
         yqEoV45gUACYtRlJbSaJZBNoXK6MUKdmTH/5j5Jx2+6vF0CPs6ML0794m79rk3ZadJOg
         XP1SpUuNmtuUgOhif9iAMnmm90VxlsawVLRfzcfL46lC2XdOULoIsZl8HSZe5x2EeAJL
         lEJmhfWWcNb0oPhR5+Yzmw+y2ea8DwlXGnoDQFaqhKFRMFlTaFdiJvhG4tQ64Dph2aDZ
         Vrz8eSUoTkNerA28IMNjiE3DcDp/paLRb6Uwz1iH/PZnvarWxTwGNzVgQgwQJX1ByPgz
         QPog==
X-Forwarded-Encrypted: i=1; AJvYcCVyMLWdkDRkxHv6nY/XvBYSN93HK7LtBHoXQnOZCCqJxDQr7xM0MU4ULPWU2ChXSCX2NbZch5rlNXg=@vger.kernel.org
X-Gm-Message-State: AOJu0YzyWvtYrDFk2X5Mi6qFJYKomZ4sjib/XlsVTwKvrjJBD3AiSv74
	z/qiafjAl2VjHTVbZ28G2zL8zORZTfkod50xsOVscCuQnIhnS/oFb9+u6RFDL8BQS9vHsXyOTKq
	jfPi+j/2hs40FJo7krBwuMuRZeuXIrYAnMtzGhY7lJFImAO060j15bn15pswYxf/zMv4C0y6zvC
	/+wQimuKQa6K7O9Oe482ynM8oaXkT/MAn28no0H9YDUmJMewwn7g==
X-Gm-Gg: ASbGnctWaroGlQV/jYAmnYvDlqQDE0FFhtXvRTpmYzoi3zPlsIroUX+yVu8KwKlzbpC
	h5ThKYzRVe7lFTB89vSEUy4tzUErMIu6KsyWFOVggpIAMLftRqaTrSts1jT4uMIyY5ZA=
X-Received: by 2002:a17:90b:2fc6:b0:311:f2bd:dc23 with SMTP id 98e67ed59e1d1-3130cd2c617mr4396426a91.15.1749038428057;
        Wed, 04 Jun 2025 05:00:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH4zS2iNlSHvDeJ03rNU7/z9iA7Gl1UF1KN4PrXi7FUR58iCvFfgSM7CAqWrPgBSWxjdrYNGyT2bfrPDYPqsUs=
X-Received: by 2002:a17:90b:2fc6:b0:311:f2bd:dc23 with SMTP id
 98e67ed59e1d1-3130cd2c617mr4396368a91.15.1749038427563; Wed, 04 Jun 2025
 05:00:27 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CACdZg2UAkDE2KZ=0tCN+pV+-mjupeY=qdGALYPshS3Q0BrHnzw@mail.gmail.com>
 <7zkvtkaafxycu2si3r4jl6qaynzfkedvphhh26rfjibq3kbxc7@56katuftwykv>
 <CACdZg2XOB9gmH0aJRLZVn4gfsd8xHyn78ohB7=wwo2ppzsXzig@mail.gmail.com>
 <kghzj5sfvb7dmkdg5iqtt2l25unqw4voxps3jcy6s7wcznr4gx@e2dn6h3geupq>
 <CAMdZqKFhcNgH-xWSUZa=N6X0kkpH=XqtZNxnBCmgoCT+XY=7Bg@mail.gmail.com>
 <CACdZg2W6+EuYn+GJYUAr+6OdU7M886GChn1+uMUC-iNxCsV7pA@mail.gmail.com> <movtjbigtmqu5qwwijxng7pc62bvfxhqf5fhf36rd5wq67c4yy@wnpjvmfuti2i>
In-Reply-To: <movtjbigtmqu5qwwijxng7pc62bvfxhqf5fhf36rd5wq67c4yy@wnpjvmfuti2i>
From: Mark Naughton <mnaughto@redhat.com>
Date: Wed, 4 Jun 2025 13:00:16 +0100
X-Gm-Features: AX0GCFsRhNZkCbx99xshxpz1VNcygHCB5DTn_TWOjchd9wFTHy6xw3JcS9VYvqU
Message-ID: <CACdZg2WJtzBYJS06vy4uLNaH2_N73Wn0HHJSSThD-F8QnX3d8Q@mail.gmail.com>
Subject: Re: Forward Deceleration Changes
To: Alejandro Colomar <alx@kernel.org>
Cc: Mark Harris <mark.hsj@gmail.com>, linux-man@vger.kernel.org, 
	Joseph Myers <josmyers@redhat.com>
Content-Type: text/plain; charset="UTF-8"

Looks like someone else thought this was a bug:
https://bugzilla.kernel.org/show_bug.cgi?id=220192


As the new man pages rolls out to more distros, I believe these bug
reports will keep coming due to the confusing nature of the change.

Mark


