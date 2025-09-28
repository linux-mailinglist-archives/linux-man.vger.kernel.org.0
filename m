Return-Path: <linux-man+bounces-3993-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DF50BA78BE
	for <lists+linux-man@lfdr.de>; Sun, 28 Sep 2025 23:29:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CE9023BABC7
	for <lists+linux-man@lfdr.de>; Sun, 28 Sep 2025 21:28:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 860D82BEFE4;
	Sun, 28 Sep 2025 21:27:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LUvFspDj"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D689429B764
	for <linux-man@vger.kernel.org>; Sun, 28 Sep 2025 21:27:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759094876; cv=none; b=R+wBoyjPAwUGpQiCt5mr4T51rL9sQMFE5BDNutyySyw7wTlDaVtl5C8H+b18eEEbUy2ZNMZ0VlPEVoPoeybf3I8zAn2o6NedL/wuE209ZdE9L7DurPOrrarXOtSwF/cEjON1x+56qm1Gfl+vbtMwEfrFj5K1BJRkN4IaoqYg8cs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759094876; c=relaxed/simple;
	bh=oMiEfmG+uMf/TPCoNvpkDWUdSUyFm8vTrbg/UTQLUXM=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=IRMhSrLR0LUweg2ASuwXE5E/Iz2AOixHxy4O5OogV0roKZ2tThEifbbY8tknVRQhY3mMVqVAv3h280o//p01imBiV63yy7Q85fUShMhvDMSSOOjgdBsLoyc9mJjGyr/Vhi/YuQzrIA6KFxDEd2SeZlZl+He5U5ViVXKLnTTVqvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LUvFspDj; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-271067d66fbso41235475ad.3
        for <linux-man@vger.kernel.org>; Sun, 28 Sep 2025 14:27:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759094874; x=1759699674; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:user-agent:message-id:date
         :references:in-reply-to:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lSd7wyEuHnG5kMgnEueivf4J3bwwH8pyvY7jYwTfAQc=;
        b=LUvFspDjA8uZxSyX9zasPN43Mo6bBB2iMVT5Fucara3utYRabq8dLyDwAXba/5480C
         aNw5zI9a8NYhwS5/WYE5j3Weel6NzOUgqTOcQ5rIK5Bb21DT/B/Egul3clGCYqHlfO3O
         j5/9vSfngtataCBcWF4f7BpsS6THs4v3xnAWsz3U6osacOXACcfUxJJ+F4H/TkrOIV6H
         WUcU7RoPWz3NJDhQyzfR1Wm1F2L9TkIyMiE/yOmm0UiRJzH7fcyLn/5ruT8XnNDV0wYk
         nY/PNQmC8SBbqFIdCaMXSNyFTvJhaW2R8gn9EQaceU76pEFKacflsaSB9YXV6yTBKejr
         WFeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759094874; x=1759699674;
        h=content-transfer-encoding:mime-version:user-agent:message-id:date
         :references:in-reply-to:subject:cc:to:from:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=lSd7wyEuHnG5kMgnEueivf4J3bwwH8pyvY7jYwTfAQc=;
        b=gPm+wb/85ZmbX/DzAmwUj5ACDzfnG52CBM/cP4DkMHu1PsQqQ0iR9VtjrhvTe1vGm+
         xlJ+uSv/5CoiLh4bQ04xbtKt6OjbFx4mIMF1iCBXDyP07iWIN/CnK6fJBtpZOE6zvTYf
         t9ZaeQ3KEYlwuxgZfib9p6498Y6eOmh/VTrqYbRm+jVGc5PqmI7GBmI9r+ITDiMqV9Kh
         MrbfKAYNAoh6Td/bTeGqixn81wXjWHaJx4bbdiMSHpjV8Ga6AJPlsap9Fws1SOQJEoMp
         sSwdnFbcPRKqRkQUzacGqH8vcYqwgzYUsig1qmDn7KbnVScsq4v8a4u8hw76FXmdOxMb
         porw==
X-Forwarded-Encrypted: i=1; AJvYcCWeLpaJKOxCD6W9XF58ZKk00+YEJOB+YaPw9dDWx1wMhx+8N1YgJK+zFKJS5YvB/7QA7YuulaqUzw0=@vger.kernel.org
X-Gm-Message-State: AOJu0YzoUEbiBZJoU+oiwa1iRMOqbQdCreVoS+uAfmiS/eoFc3hQK1RP
	S9i4ZbGBei+eCQ1HfQPdWvCpHcAkT349gC5bjQDoXK9cVclYQwWifjnvn7BPXg==
X-Gm-Gg: ASbGncsieMFd7Q8Q01KCBWdCG3lMj7qKTDSYucjSn2tH/ib6BK9D4MaKfVbYyYg5FUz
	JNbo3k8Q+Ytn78RLgZHb1uhhgfKTYrkAa8XwveZmUd+jTHVmnQ6C5+J2PHbCJU09IMLTRCDjCpK
	AyXJqGsdhRWLGWX2+Xxr0SMY/qE3kBSxLJ+1451Tphk8SbyZsnPdyiKSYZtRQFvut2eAy9o4vdr
	kRQkkj92kiEzttAqMIWR9pK6APZ2blIzpEu5D/HhsJqflTHF5Cd1bfCNfpFsExYmI7Ld2Oq/gjs
	WiTutyxmgsMej5KsK1EHr4u6D/AEGt9U9+RyzB/AeRexjpRxnqMODrWetLej5iG9Xbq+gKWQVmz
	9xsc4
X-Google-Smtp-Source: AGHT+IF9BG6Zi4zKJFRuGWmKd4mqSxprQB0DX/7VkPNNk4gxBlAD9kNzso+NWN8R9j3k0EyHcRqt7Q==
X-Received: by 2002:a17:903:2b05:b0:274:746c:b09 with SMTP id d9443c01a7336-27ed4a89201mr142868035ad.55.1759094873879;
        Sun, 28 Sep 2025 14:27:53 -0700 (PDT)
Received: from fedora ([2601:646:8081:3770::55b7])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed69ab0aesm109098115ad.113.2025.09.28.14.27.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Sep 2025 14:27:53 -0700 (PDT)
From: Collin Funk <collin.funk1@gmail.com>
To: Cristian =?utf-8?Q?Rodr=C3=ADguez?= <cristian@rodriguez.im>
Cc: Alejandro Colomar <alx@kernel.org>,  libc-alpha@sourceware.org,
  linux-man@vger.kernel.org
Subject: Re: getpwent_r(3) needs gr->gr_mem to be freed, but that's not
 documented
In-Reply-To: <CAPBLoAd8bMrOLjURHRvVW4_eEJYgcA9Np0++YPG1dLJoWfcWWQ@mail.gmail.com>
References: <vy2burlsbramtt4oysq7gsesrytp47kkhmevlmgkxsktksjeit@7eenz2wnzkh7>
	<qxojij46n3oofvv7nekkslfuxsbdcxinf2lo763242hfzwm3fe@un6wgjr34rku>
	<CAPBLoAd8bMrOLjURHRvVW4_eEJYgcA9Np0++YPG1dLJoWfcWWQ@mail.gmail.com>
Date: Sun, 28 Sep 2025 14:27:52 -0700
Message-ID: <874ismp8rr.fsf@gmail.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Cristian Rodr=C3=ADguez <cristian@rodriguez.im> writes:

> On Sun, Sep 28, 2025 at 5:40=E2=80=AFPM Alejandro Colomar <alx@kernel.org=
> wrote:
>>
>> On Sun, Sep 28, 2025 at 10:26:33PM +0200, Alejandro Colomar wrote:
>> > Hi!
>> >
>> > Another thing I realized about getpwent_r(3) et al. is that gr->gr_mem
>>
>> Actually, getgrent_r(3).
>>
>> > is allocated by the function, but is expected to be freed by the calle=
r.
>> >
>> > I didn't find this documented, neither in the manual page nor in the
>> > glibc manual.  Is it documented but I missed it?  Or did I misundersta=
nd
>> > something?  Or is it just that nobody documented it?
>
> It is just not documented it seems, that's great..another footgun..

POSIX also doesn't require the gr_mem member be allocated using malloc.

Collin

