Return-Path: <linux-man+bounces-5128-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GBFkDoz3jmnbGAEAu9opvQ
	(envelope-from <linux-man+bounces-5128-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 13 Feb 2026 11:06:04 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A7F9B134D87
	for <lists+linux-man@lfdr.de>; Fri, 13 Feb 2026 11:06:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 94DE9301F481
	for <lists+linux-man@lfdr.de>; Fri, 13 Feb 2026 10:06:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66AF634C989;
	Fri, 13 Feb 2026 10:06:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Z6/hoOT0"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com [209.85.214.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F5C931DD86
	for <linux-man@vger.kernel.org>; Fri, 13 Feb 2026 10:05:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770977161; cv=none; b=kLOpzYCRyPL+Ux+0iMNGp2UmpsYB9Of4uH9WgvWOepqENCMXbHoLqk1/uIFe9/PCgzI/zPflb7wtXQJBk3XYmZf7IBSb4l2S5nhZnXKecaPTOOYMfLp7hpgy8bMukCTxn2SMyXMHqWwNBMpM87dad2x/96S3Os5LjLY0eCw0Mjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770977161; c=relaxed/simple;
	bh=edg8M7MJB5297vWlukpeK403SsUDlnQg/qzhk7YhDK4=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=YEr0xBByeYjVLPqQuNz84KFbfJiD6f5obWdBs5xnioFmnfVkv996HzXRJVIGR4D/FHJ4QmKhhvgJKeUkiowZiyiNrUC9yj+3l0s8dRKstCgbmhiSl+VXON3+oRa0YLX/GRRd6Rchxx7gYenHia4kWcKbnCXLfqKdVUxVVz2D530=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Z6/hoOT0; arc=none smtp.client-ip=209.85.214.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f194.google.com with SMTP id d9443c01a7336-2a79ded11a2so5224145ad.3
        for <linux-man@vger.kernel.org>; Fri, 13 Feb 2026 02:05:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770977159; x=1771581959; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S8zPl7C191P/Iwxtu73/R0aO8cdk3qjg4jILtlnXnOs=;
        b=Z6/hoOT0QwUWNZdq5jmrKFuBli65R/YZc1BzTx0fRQ3A04HPII2s+u0v8qHgAyV6d9
         Rrd3qcshob0wlSoiPRnITi1FUpl8HwxG/YxTWVUXj+AahlM2lg6zk3jAoEf+CcPgOzL2
         MRXptNoeIrBsZfh7hBeTFQyCeYr1e4EJH4MwHiHyWTiPPmaZd1BNeDx5+/qoNCDve886
         yFxKkDFncg6YpWVmUhCYXNYU45+6ryjKk4bLh4lDeEZSQzOnyHQCAjKQhlHVo7EHaLYF
         wdNIPAE4Iiwzs/nW9I6Eeo5UgqV7zMYirBzo5kOfCTQVXUHtkexY7dzHa4rVWwUntTd2
         MYdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770977159; x=1771581959;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=S8zPl7C191P/Iwxtu73/R0aO8cdk3qjg4jILtlnXnOs=;
        b=gvDzOmaU1dcwrZ3nu9lWM1/OeKHf94ozPHGmldzV86CEzv5yaJZa7AKjgU7FJsni1M
         2KrmqmD2TKXw7hb6AoqzASCt5lSjshFfIUOzU+YCY7HBRTj2cN9xOY7trWve16ReeFuX
         5JHsNAGRlHO4DGrnBi3dYjTNJKISAuNE4qUfB6FLa2196u25S302XyE5B8lzv9DXymEp
         IkjpvNTYpouDKYEWUFTolR9v9bQdcPgRzIydwPoAyLF0hBaTxiYatU+4XdAYDKdUObJF
         c/6TpBJdpvobu8/dhQM3+RAN6X1Oa0tPqXGymk80XWEP4yPNhdj3ERjahwiY5p1CwMDK
         NGuA==
X-Gm-Message-State: AOJu0Ywlui/spUCC8BPvWTBqpBvNme4Ms/SGXjag9BDExDOZPbo7fmqJ
	aWxzBRM69NbJigfgl0KsExoyrLmD1rEkJiGl/ee1fJzCRASxde52jjSf
X-Gm-Gg: AZuq6aJLxXojmNelC5Wy0hO8vG93Vc7FspGIxG2JQK+ZPdsY0powf2CZJoQiIQ1cvAW
	hHXQRqSFqb/ZHYUseR/7n+XPGPi7MS7y1gP9oGfxiMaOhGeqmWQGTCKi8QP8wsepKK67MEwt3pu
	canO5enHl7uBNOEt9TRqGKNxU6a6aC57HzrZeugZ36m09VxDyjUSqjyQC94T5BgOMJEAr1YZ8mJ
	u6MSs8bBpIMZ6L9Di+zIpcdXqnAYqpueGpGenE4hc7WU/AdyfByTJ+0mO0q1Xm2admT498hjDns
	f5mzRzftcKPotQ/PG+m8KEle6C1q8NKuPUDG8WAyGW0kX54jcp6RrhADLqSHAYncYCmId7FjFtm
	xvy57urK+tI2hxU31zCqntuZeJQeAzRN+qdbx3pokxysUjE0OnTbXDsS8dMh3eUWNsGbx1tsKUS
	S00AiS91EYTJuqu7/4fDIc7QtuECwW4EH+gaptWNOQdazT40y+ZntihcnAnXw=
X-Received: by 2002:a17:902:e5c3:b0:2aa:eed5:c5aa with SMTP id d9443c01a7336-2ab505f33b1mr12659085ad.57.1770977159199;
        Fri, 13 Feb 2026 02:05:59 -0800 (PST)
Received: from localhost ([2405:201:3017:184:52f5:ed80:f874:1efc])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ab2997b3cdsm77417795ad.70.2026.02.13.02.05.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Feb 2026 02:05:58 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 13 Feb 2026 15:35:46 +0530
Message-Id: <DGDR05PJO22F.33BTDW19HI4KM@gmail.com>
Cc: <linux-man@vger.kernel.org>, <criu@lists.linux.dev>, "Andrei Vagin"
 <avagin@gmail.com>, "Pavel Tikhomirov" <ptikhomirov@virtuozzo.com>, "Jeff
 Layton" <jlayton@kernel.org>, "Miklos Szeredi" <miklos@szeredi.hu>, "Josef
 Bacik" <josef@toxicpanda.com>, "Christian Brauner" <brauner@kernel.org>
Subject: Re: [PATCH v1 07/10] man/man2/statmount.2: Document
 STATMOUNT_{UIDMAP,GIDMAP}
From: "Bhavik Sachdev" <b.sachdev1904@gmail.com>
To: "Alejandro Colomar" <alx@kernel.org>, "Bhavik Sachdev"
 <b.sachdev1904@gmail.com>
X-Mailer: aerc 0.21.0
References: <cover.1770671863.git.b.sachdev1904@gmail.com>
 <fe86edd32cea5b9bf80320fc2ce9b6507a85af1c.1770671863.git.b.sachdev1904@gmail.com> <aYyJMflAWPJu7_EQ@devuan>
In-Reply-To: <aYyJMflAWPJu7_EQ@devuan>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5128-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linux.dev,gmail.com,virtuozzo.com,kernel.org,szeredi.hu,toxicpanda.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bsachdev1904@gmail.com,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	RCPT_COUNT_SEVEN(0.00)[10];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com]
X-Rspamd-Queue-Id: A7F9B134D87
X-Rspamd-Action: no action

On Wed Feb 11, 2026 at 7:29 PM IST, Alejandro Colomar wrote:
> Hi Bhavik,

Hey Alex!

>
> On 2026-02-10T02:47:40+0530, Bhavik Sachdev wrote:
>> Document the STATMOUNT_{UIDMAP,GIDMAP} flags and the corresponding
>> fields introduced by them. Most of this is based on the commit message
>> provided here [1].
>>=20
>> Link [1]:
>> <https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/comm=
it/?id=3D37c4a9590e1efcae7749682239fc22a330d2d325>
>>=20
>> Signed-off-by: Bhavik Sachdev <b.sachdev1904@gmail.com>
>> ---
>>  man/man2/statmount.2 | 34 ++++++++++++++++++++++++++++++++++
>>  1 file changed, 34 insertions(+)
>>=20
>> diff --git a/man/man2/statmount.2 b/man/man2/statmount.2
>> index b7acde8f4..4da55eb38 100644
>> --- a/man/man2/statmount.2
>> +++ b/man/man2/statmount.2
>> @@ -56,6 +56,10 @@ .SH SYNOPSIS
>>  .B "    __u32  opt_array;"
>>  .B "    __u32  opt_sec_num;"
>>  .B "    __u32  opt_sec_array;"
>> +.B "    __u32  mnt_uidmap_num;"
>> +.B "    __u32  mnt_uidmap;"
>> +.B "    __u32  mnt_gidmap_num;"
>> +.B "    __u32  mnt_gidmap;"
>>  .B "    char   str[];"
>>  .B };
>>  .EE
>> @@ -120,6 +124,8 @@ .SS The mnt_id_req structure
>>  STATMOUNT_SB_SOURCE	/* Want/got sb_source */
>>  STATMOUNT_OPT_ARRAY	/* Want/got opt_... */
>>  STATMOUNT_OPT_SEC_ARRAY	/* Want/got opt_sec... */
>> +STATMOUNT_MNT_UIDMAP	/* Want/got uidmap... */
>> +STATMOUNT_MNT_GIDMAP	/* Want/got gidmap... */
>>  .TE
>>  .in
>>  .P
>> @@ -299,6 +305,34 @@ .SS The returned information
>>  buffer that contains security options separated by null bytes.
>>  They can be iterated over the help of
>>  .IR smbuf.opt_sec_num .
>> +.TP
>> +.I smbuf.mnt_uidmap_num
>> +The number of uid mappings in case of an idmapped mount.
>> +If STATMOUNT_UIDMAP was not unset and this field is 0,
>
> "If ... was not unset" is confusing.  As far as I can read, the .param
> field is an ORed combination of flags, so usually you set things,
> because otherwise you get 0.
>
> The wording seems to imply that something is set by default and I'd need
> to unset it explicitly.
>
> Am I missing something?
>
> Should this say "If ... was set"?
>

The patch implicitly refers to the smbuf.mask field, which is a ORed
combination of the flags statmount() was actually able to successfully
fill.

So, if smbuf.mask has STATMOUNT_UIDMAP set (i.e the kernel was able to
successfully get the uid mappings of the mount) and smbuf.mnt_uidmap_num
is 0, then the mount is not a idmapped mount.

The patch does a terrible job of explaining this, i will come up with
something better.

>> +the mount is not an idmapped mount.
>> +.TP
>> +.I smbuf.mnt_uidmap
>> +The offset to the location in the
>> +.I smbuf.str
>> +buffer that contains uid mappings as string array separated by null byt=
es.
>> +They can be iterated over with the help of
>> +.IR smbuf.mnt_uidmap_num .
>> +The whole range of uid mappings must be resolvable inthe caller's user
>
> s/inthe/in the/
>
>> +namespace.
>
> I think "the user namespace of the caller" reads better.
>

I agree.

>> +.TP
>> +.I smbuf.mnt_gidmap_num
>> +The number of gid mappings in case of an idmapped mount.
>> +If STATMOUNT_GIDMAP was not unset and this field is 0,
>> +the mount is not an idmapped mount.
>> +.TP
>> +.I smbuf.mnt_gidmap
>> +The offset to the location in the
>> +.I smbuf.str
>> +buffer that contains uid mappings as string array separated by null byt=
es.
>
> What do you mean by 'string array'?  Array is confusing, because it
> doesn't match the C concept of an array, since that would require all
> elements to have the same exact size.
>
> How about 'consecutive null-terminated strings'?

I agree.

>
>

I have taken a look at the rest of your comments as well, I will send
out a revision with the fixes soon!
Thanks for all your help :)

> Cheers,
> Alex
>
>> +They can be iterated over with the help of
>> +.IR smbuf.mnt_gidmap_num .
>> +The whole range of gid mappings must be resolvable in the caller's user
>> +namespace.
>>  .SH RETURN VALUE
>>  On success, zero is returned.
>>  On error, \-1 is returned, and
>> --=20
>> 2.53.0
>>=20
>>=20


