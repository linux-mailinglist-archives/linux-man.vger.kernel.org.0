Return-Path: <linux-man+bounces-748-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D58D8A422F
	for <lists+linux-man@lfdr.de>; Sun, 14 Apr 2024 14:01:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B94891C20938
	for <lists+linux-man@lfdr.de>; Sun, 14 Apr 2024 12:01:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6F093BB32;
	Sun, 14 Apr 2024 12:01:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XCj71/vm"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43ECD374FE
	for <linux-man@vger.kernel.org>; Sun, 14 Apr 2024 12:01:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713096109; cv=none; b=KowdfxdIvPcGRmqXF0nvqlAxjIHnBjcF8IpZdC7JRGEblXHCYP2tfXry7JZM70kCeA2qgrQC9Ncyo+iD3x+QC9msYJPd8dDR7OaZDU4gVf/rhPKdXIBiS0cDikFnBTdyp4Nkm1tZMz3MiVJMS79+QBw8dpH0S5wKeunhaqNq2nM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713096109; c=relaxed/simple;
	bh=iGt6hca/rTSWgiLAdROd2Z0kZeFd2bPZZ2GqcPzd4Nw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nYCm8DLqktehMwbQCCXIG4Od/D8J3t4axYuMi+CTOCStFV/qfOAHPv7MjZcGXJlumXQAxrPE7W3ctuR9kNAFKh71YXb5m3/bZxgsPmoEXzR1xktIDCq4oZlCWPfjAtSlfI0bngUYVSf4hPWB+uBPqwHqtgbKkR+BnzfZDg/QeIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XCj71/vm; arc=none smtp.client-ip=209.85.210.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f47.google.com with SMTP id 46e09a7af769-6eb75c202dbso549347a34.2
        for <linux-man@vger.kernel.org>; Sun, 14 Apr 2024 05:01:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713096107; x=1713700907; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vhm7OzBhNrwPwwt8g66my3Xe7vhIGo6WqWmvW1Jd8uA=;
        b=XCj71/vmq9eMVlAgApVz4/CgaYoBeCxy0ZzfMRXjCZemQdj/NtKaxhzPBEiDYfNPnw
         XmTXFaZbgjGAftxgtDVuXa3/QWLJgLt+A88sxZ8EZetw1RXt/4fmtVl0DcxSnCRZc659
         nN+rZzipR6CkXBSd8k/LSaRcYzhgpe2FSan3qzIYfVueoLqfGlc75CRhVM1z+o0sDFjb
         7RVKrRya9VpaWsgrwrxbFde8r7o8EkPVw5FuVLsjqMAZKVOo5iHQHTAnwl/q4d3XkZm4
         9PQclLAvufasyMUDUzNJ3oucQnQsSt2I5SBBlWD7Qtme+3WkducaG0d+FO/cjLRvJ3gR
         Sarg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713096107; x=1713700907;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vhm7OzBhNrwPwwt8g66my3Xe7vhIGo6WqWmvW1Jd8uA=;
        b=PKdZnRmMsVPuN+USl4b4LM7COJZDI0yxSByLiRWGv7WnuQfO9BSv+7IT6LaSMzBvfd
         82AXfU5dJsMJggRNxhtzyE0Mw44+q6qKpiAcKNVWzpD0o4w0/eMtc5xgQh82WQiWIiZM
         FQCg6KX4RvxWlKfaWNisPRnv1i8266PG4+D/Ev7YWVDxnQ+3HaEerq9WWc1HsNFPx0v9
         3NgAilHhjrNFUmxiQOOJhNP+vZ2EsSCFoOhqWwYcqW7NUd6KGd2aURnqFxcXvTf4JDz/
         nr2Ed2pSmWN/Y3Fq5eopkOKRjbwUgM4A9KoID7Fsp31HKmDrA55lw63wqyo549OVvSCv
         OHvQ==
X-Forwarded-Encrypted: i=1; AJvYcCUvPa155dOwBVnHIDRPSjyjmXpBDjBcJnW0Dv6wnVLVvYrrE9eVfiEtPXmooXRxyT3EHr2k4Jl1aZRFzR5sR/u9FnfDBFHcnjx5
X-Gm-Message-State: AOJu0YxVOVBkPiECTD4PknKkg/zSMNpBCAXvWM4+h5wIrk2dms3bveiw
	hJZd0KJyeXvKqZNyc+4+OoXPpB2qzij+Geck3/eJfNBnxQGOgZpd3ZUbog==
X-Google-Smtp-Source: AGHT+IFC/xiq41G96cg9F7s9NCU7NTRxG0g4cxM+NC7LIUnWImH+zHZREcq8AT6q9ztRO7x8m4dZrw==
X-Received: by 2002:a9d:7991:0:b0:6eb:7c4f:d4d with SMTP id h17-20020a9d7991000000b006eb7c4f0d4dmr1087733otm.8.1713096107295;
        Sun, 14 Apr 2024 05:01:47 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id di15-20020a0568303a0f00b006eb7b0ee326sm189627otb.65.2024.04.14.05.01.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Apr 2024 05:01:46 -0700 (PDT)
Date: Sun, 14 Apr 2024 07:01:45 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Deri James <deri@chuzzlewit.myzen.co.uk>, linux-man@vger.kernel.org
Subject: Re: Linux man-pages PDF book
Message-ID: <20240414120145.xa5sryqprufsvhqi@illithid>
References: <Zhu_-FE5sl3vSu1w@debian>
 <ZhvA5QR1xg4BEWvI@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="3el57ttd7z37sidk"
Content-Disposition: inline
In-Reply-To: <ZhvA5QR1xg4BEWvI@debian>


--3el57ttd7z37sidk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

At 2024-04-14T13:41:24+0200, Alejandro Colomar wrote:
> Another thing I want to do, as mentioned in the groff bug, is to
> remove our an.tmac.  Is there any change we can use a minimal
> definition that we can cat(1) to the system an.tmac?  Or maybe instead
> of cat(1)ing it, tell groff(1) to use our definition in addition to
> -man.

Deri had been using the cover page document to append to man(7) macros
definitions, which basically accomplished this.

I've since refactored everything that hyperlinked book generation needed
in that respect into groff's "an.tmac" (in Git), leaving the cover page
to do only cover page things.

https://git.savannah.gnu.org/cgit/groff.git/tree/doc/GMPfront.t.in

Regards,
Branden

--3el57ttd7z37sidk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmYbxakACgkQ0Z6cfXEm
bc63HQ//SiQmAEhKaAerOz/aYLy1nv+CKwSSZ5LQ3j9gb/OlVvVMwnHGEYLLas/J
EZIV1Yx19xvd8NIPlhstBl85xva7aI4PvHbcbv9QQAN0RSX65SqlYsEqj2QFsnMx
/oU8BMR7djbOOaCPbsuJwEydfOwjq3Imi6jcO+WFZieh3CpCZnOMBnsMMA0nU1n5
SU11gzNlVGRot4PTjfAOevgxWG3f2iPT3iGZAPWv+mFwYNiQiqkWkmyZnhFqxqEs
SbdLcZpUyhdikBpPgECXUjVzCyszCmX90cocEv6E5DsUSHH+1faQOblKCTb/s80C
Z+WeuqJ5fkKJZ6ksWp+kZ7Q+XGbcoEFN4xg8mnA86n0yWMZXDx0mqC7voizn1gom
kZy01Cty3TmF//ONFR77oTJ0GvnbePBB762IYjOuaSfHYDuTZtqaWZBMO4zGNeCo
UYQo4OyyybrWQanHXkIMrUo+rSt8B1AJJJ/h+aqK/JLhzZv43VPrM5dEkjJ7csxG
as7WIrPJnQe2eKa1ezLqug04eGPjCwhIL4upPno7HJyw592wUMqv2WWYJSx943HW
+NOmu5um766z0AFjIciwcDiRwpRlIR3DACdWdTk6Tu2sw4jrtwvgHBLwrWOAjq9F
z6ypjA5QpVzPm/upfS9RQYX+NjFq+s3IDkcz8mMswe73+tq1G5Q=
=b7PN
-----END PGP SIGNATURE-----

--3el57ttd7z37sidk--

