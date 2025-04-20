Return-Path: <linux-man+bounces-2786-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DE90A94794
	for <lists+linux-man@lfdr.de>; Sun, 20 Apr 2025 13:37:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C78191894873
	for <lists+linux-man@lfdr.de>; Sun, 20 Apr 2025 11:38:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D22D71E1A16;
	Sun, 20 Apr 2025 11:37:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b="SKe/Alrz"
X-Original-To: linux-man@vger.kernel.org
Received: from outbound.pv.icloud.com (p-west1-cluster4-host9-snip4-4.eps.apple.com [57.103.65.155])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DA34CA4B
	for <linux-man@vger.kernel.org>; Sun, 20 Apr 2025 11:37:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=57.103.65.155
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745149074; cv=none; b=Jsb87nicq1NjoEwaGH+lnVrt1RHiCDeaWgjFL11tT+YAdM2zFZSPRqZ6MtW30M9lG1hN+e6zcJZ4Ls3KHvnaD2/HHEy2iFrYguLIFj7inHqcdl1fJl/Ji7Uu96oVvGALXP0narnRLNdWFUqP21nLuQDUDzziD+yX1VuPTcrA3mA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745149074; c=relaxed/simple;
	bh=LFDyyTTUMvjdd2NacLEO/cRaZRr+MJslK7yX7t6Xt+s=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=W4HMNjJi/HDnAmCXg4qEQWeza5r0x95wUOGhHaqbgHC79x/KVA6wHWMfUHyIhm5GIGGTE8F7ITMi8PJcxtoUP9/GI7iACPX4jI/s4L5929bdNbCyrYjcbA+aZEM7gNvp+bQupqAvtLhSNBtZUMKCiQ5HF8iBa3aMnWYBZtFo0NU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com; spf=pass smtp.mailfrom=icloud.com; dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b=SKe/Alrz; arc=none smtp.client-ip=57.103.65.155
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=icloud.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; bh=ayCOZOgCXhAI05puQWGVYziGmxNg7ZytE1/JHPub4rU=;
	h=Content-Type:Mime-Version:Subject:From:Date:Message-Id:To:x-icloud-hme;
	b=SKe/AlrzEurfjBQm9ir9Dc8kJNu26lCcRRXFzjVQNbiM8SIkZ0FnJNRA0gCqouqRR
	 NYzUcOI9lE4ZhffCR9hkf09t2dWdsNdk5WBcNj0jKjifEEL8X65WCuDW+3KQUuI1MZ
	 w34e9CUK/poptV9P2zx15QE71dtxhutNljMJBE1hhJ6nR21m//8jzYpGIQy6PnJTRW
	 wd6nNaYSI9uo+k++IVZi4jrrhOJr40P6UYE2EY5+nKWYbwCJ7f+mUr009h4kkpqndx
	 2fncp2SCOnABeKejHAN2CJvTMvpK9j1UI8gRQcEHuFJ5hcqYHnO2vPYJK6zVHml5sv
	 tO529hofaXbUw==
Received: from smtpclient.apple (pv-asmtp-me-k8s.p00.prod.me.com [17.56.9.36])
	by outbound.pv.icloud.com (Postfix) with ESMTPSA id C0DF11800603;
	Sun, 20 Apr 2025 11:37:50 +0000 (UTC)
Content-Type: text/plain;
	charset=us-ascii
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.600.62\))
Subject: Re: SLIST_REMOVAL number of arguments
From: Solomon Tan <wjsota@icloud.com>
In-Reply-To: <tzx7sgns2uopu75s5gipw2yxkpg6drun2esl5feoazulkqjnqd@hoayn3jqoe5p>
Date: Sun, 20 Apr 2025 19:37:37 +0800
Cc: linux-man@vger.kernel.org
Content-Transfer-Encoding: quoted-printable
Message-Id: <70A926BE-9E8F-426A-BE5A-4D073FD9C5AF@icloud.com>
References: <1E1258C7-25AD-4BA1-B82C-6CDFC9DB9887@icloud.com>
 <tzx7sgns2uopu75s5gipw2yxkpg6drun2esl5feoazulkqjnqd@hoayn3jqoe5p>
To: Alejandro Colomar <alx@kernel.org>
X-Mailer: Apple Mail (2.3774.600.62)
X-Proofpoint-ORIG-GUID: uSDcRcYYZU447ysA7TEjrcZLi985m9Qj
X-Proofpoint-GUID: uSDcRcYYZU447ysA7TEjrcZLi985m9Qj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-20_05,2025-04-17_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 mlxlogscore=999 spamscore=0 clxscore=1015 suspectscore=0 bulkscore=0
 malwarescore=0 phishscore=0 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.22.0-2503100000 definitions=main-2504200095



> On 20 Apr 2025, at 18:56, Alejandro Colomar <alx@kernel.org> wrote:
>=20
> Hi Solomon!
>=20
> On Sun, Apr 20, 2025 at 06:07:32PM +0800, Solomon Tan wrote:
>> Kindly forgive me if I'm mistaken, but might there be an error in the
>> man pages on the number of arguments in `SLIST_REMOVE`?
>>=20
>> The SYNOPSIS in https://man7.org/linux/man-pages/man3/slist.3.html =
states that there are three arguments.
>> ```
>>       void SLIST_REMOVE(SLIST_HEAD *head, struct TYPE *elm,
>>                               SLIST_ENTRY NAME);
>> ```
>>=20
>> However, the EXAMPLE and the source indicate that there should be =
four. Quoting the source:
>>=20
>> ```
>> #define    SLIST_REMOVE(head, elm, type, field) do {            \
>> ```
>=20
> 	alx@debian:~/src/gnu/glibc/master$ grepc SLIST_REMOVE .
> 	./misc/sys/queue.h:#define	SLIST_REMOVE(head, elm, type, =
field) do {	\
> 		if ((head)->slh_first =3D=3D (elm)) {				=
\
> 			SLIST_REMOVE_HEAD((head), field);			=
\
> 		}								=
\
> 		else {								=
\
> 			struct type *curelm =3D (head)->slh_first;		=
\
> 			while(curelm->field.sle_next !=3D (elm))		=
	\
> 				curelm =3D curelm->field.sle_next;		=
\
> 			curelm->field.sle_next =3D				=
\
> 			    curelm->field.sle_next->field.sle_next;		=
\
> 		}								=
\
> 	} while (/*CONSTCOND*/0)
>=20
>> Should the SYNOPSIS be the following instead?
>> ```
>>       void SLIST_REMOVE(SLIST_HEAD *head, struct TYPE *elm, TYPE,
>>                               SLIST_ENTRY NAME);
>> ```
>=20
> Yep, this seems a mistake I made in 2020.  A fix should include the
> following tag:
>=20
> Fixes: bb8164dec0c4 (2020-10-22; "slist.3: ffix: Use man markup")
>=20
>=20
> Do you want to send a patch, or should I do it?
>=20

I would like to send a patch, please. :D I will do it in another email.

>=20
> Have a lovely day!
> Alex
>=20
> --=20
> <https://www.alejandro-colomar.es/>


