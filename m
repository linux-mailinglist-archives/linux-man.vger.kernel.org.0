Return-Path: <linux-man+bounces-3092-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C5172ACC989
	for <lists+linux-man@lfdr.de>; Tue,  3 Jun 2025 16:48:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3AA0C3A54E9
	for <lists+linux-man@lfdr.de>; Tue,  3 Jun 2025 14:48:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C9A5239E75;
	Tue,  3 Jun 2025 14:48:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XZ+UeDDi"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B93F14B5AE
	for <linux-man@vger.kernel.org>; Tue,  3 Jun 2025 14:48:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748962102; cv=none; b=Ep6ZQd9B6z1uaboPsejfpxNP2O9YIRoB/xFfQ/J1CbYSdM2zGvDdJhN3aAIT+o0jED3sT5M/y6W+6sQbORZsenfmHMLQ5A/uUYABQpTGj1KNjyIjd6Y5QWmdSewJJB6W6ASwvCPH35+IhGTUTfijsKzRb7y2gmCfpkvJnoNxcA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748962102; c=relaxed/simple;
	bh=mHb5IyA6aHKNgWmscx2L0z3JxicAF/llR92T1bLdp7Q=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LtpZKr/A3LpGZ5hsrsmWDSzMSt6GobUmE74Qyx81rOGQwVRNGL9nr/3uELmAl8Y0546I+X+5uB28Xq4Eo01LJEzG3UYCpwuT6/NACB4CuOvjpvTB2Q00wDoJToeYBiBDyrJDAbFdqLllt6+GDfc4BKkOfsR77idTsf/h4X3jbCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XZ+UeDDi; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-55320ddb9edso6166336e87.1
        for <linux-man@vger.kernel.org>; Tue, 03 Jun 2025 07:48:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748962099; x=1749566899; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=sgls4kzhX435TjOG36S3ZgdE+fi0V1kxqL0cmKcmrY8=;
        b=XZ+UeDDiS+Vvnrm+Wi9tqOkUFxsYwogHeC0gZOTFVIpg7IE88mVuvNVUk0TZ4K874b
         vvb/TatjaD+NgJByv+wq7vIzdv4Tah1PGd+0zsC/oCQwYUttNzacOM6TTmABQM3vP/yE
         Zi9NzyES2aAZcU5sSpfV6ctUzUJ3BWtYCxJbE6u7n1cMrtTh34zLjK44vzBYBq0vfJNK
         FkRmKGU1dKsflOSlayhtH0LdpHvz0ssolh20Du1HWwbzPztUPkjU74/4FXGpCIKz2wpV
         LBLPY9QLrpzqFnECbR1+gdq30AMpvLXGLUVbTx0MZ3CblQzIsUt56kp4cjipeHNbk/HN
         f8pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748962099; x=1749566899;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sgls4kzhX435TjOG36S3ZgdE+fi0V1kxqL0cmKcmrY8=;
        b=q9993CHYdiVb4qpaCEI/tDuZFjpGGo0WRwbt/6vRO2omcm/0BBVLKod336Ux3Ec7UT
         eEmLlxBQn9HJOQuSHNZtZnHoS9/fpxwOZaN318R9xgTP3GvHY1YRdApYUkOzLrXsC0vn
         raBBbSrME1HdT/PwmkdwmGZB2U0FXVdk2L/8F+YXpsqTMU8W2UkSk04cg41wlJC7hCcP
         2cEHTGybQjHWoTa8wAYirdJadQk0h7n21wChNfpmWdSf8D5Zz9L/Gm0YfOKOkZxe5gt1
         YIx+uy/9+JeJoD6g/u7BSQEIv1hExj+VpZOwK66IR+XEz/FtmMytbXh36BBhduvyng1L
         oO0g==
X-Forwarded-Encrypted: i=1; AJvYcCXasw36HYUtYhcn6+maNPKiaZFkjsZtqZiiQS2E7xSPyR4yFh4cAP++cMPStHURIOTopo/kZRb+9rM=@vger.kernel.org
X-Gm-Message-State: AOJu0Ywqjkf8HrRYAVv2f7mf/pn4frN1vHQvH9c90D/uWFisAlzoBi7k
	yHd1YqGGPBDeDhhY3xaGeyrfwgVM8KRhSgthVbXQyULpt/6wsEwsuyh/qnc54hSK2ECLDwPO+O4
	msSJKWJYAKfKVEjtu2utyMW2tP07jQFE=
X-Gm-Gg: ASbGncsXj1LuWz426aGmJwkW57ImSwiL4y7PbNETGI18aV7Lx0rDDuR+B8J8YXHr8/N
	GqbVTfin4tJRsehkqlnkZpNIPnmuvnYhkW7YOmBEh8QdSchivnqsJPlxkZw+HaaTtqxHE3xD6I0
	JkrnMOwub9rWkAIiFllyLRr7XWyO+Uf6Fl7alomIAB3iu/MB89SS1kVio+zXS4EQ==
X-Google-Smtp-Source: AGHT+IGY8+X50l+nslz9Y85CSOwiRYQJlRhw1+dMrBZo/aExToDLKISPJfotN/1rU9UjimIMGMXciYE9b4Y01OFVXEY=
X-Received: by 2002:a05:6512:39cc:b0:553:2ef3:f73f with SMTP id
 2adb3069b0e04-5533b8e5e6amr6132835e87.3.1748962098496; Tue, 03 Jun 2025
 07:48:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CACdZg2UAkDE2KZ=0tCN+pV+-mjupeY=qdGALYPshS3Q0BrHnzw@mail.gmail.com>
 <7zkvtkaafxycu2si3r4jl6qaynzfkedvphhh26rfjibq3kbxc7@56katuftwykv>
 <CACdZg2XOB9gmH0aJRLZVn4gfsd8xHyn78ohB7=wwo2ppzsXzig@mail.gmail.com> <kghzj5sfvb7dmkdg5iqtt2l25unqw4voxps3jcy6s7wcznr4gx@e2dn6h3geupq>
In-Reply-To: <kghzj5sfvb7dmkdg5iqtt2l25unqw4voxps3jcy6s7wcznr4gx@e2dn6h3geupq>
From: Mark Harris <mark.hsj@gmail.com>
Date: Tue, 3 Jun 2025 07:48:06 -0700
X-Gm-Features: AX0GCFvPLWB-2x-mbGXWIEXat704wKHHdDyH3PblOkxU9pwn4eP0OOsFIgsI4c8
Message-ID: <CAMdZqKFhcNgH-xWSUZa=N6X0kkpH=XqtZNxnBCmgoCT+XY=7Bg@mail.gmail.com>
Subject: Re: Forward Deceleration Changes
To: Alejandro Colomar <alx@kernel.org>
Cc: Mark Naughton <mnaughto@redhat.com>, linux-man@vger.kernel.org, 
	Joseph Myers <josmyers@redhat.com>
Content-Type: text/plain; charset="UTF-8"

> > When I open a man page I want to see "what arguments do I pass and in
> > what order". With this change you have to parse the prototype for the
> > semi-colon
> > to see the start of the args.
>
> I tried to use a style that makes the ';' stand out more, by breaking
> the line after it.  But I agree that the first times you look at it, it
> can be a bit confusing and hard to distinguish.

The main issue with the forward declaration syntax is that it is easy
to mistake the forward declarations for arguments, especially when
just quickly checking the man page to remind yourself which argument
is first.  If you want to retain this syntax, what might help is to
remove the bold font style from the forward declarations, or change
their formatting in some other way to be different than that of the
arguments.


 - Mark

