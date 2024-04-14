Return-Path: <linux-man+bounces-747-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A3E748A422C
	for <lists+linux-man@lfdr.de>; Sun, 14 Apr 2024 13:57:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 31604B2120C
	for <lists+linux-man@lfdr.de>; Sun, 14 Apr 2024 11:57:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACC3C36B1C;
	Sun, 14 Apr 2024 11:57:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="C9qQsSF3"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oo1-f42.google.com (mail-oo1-f42.google.com [209.85.161.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4060E1862C
	for <linux-man@vger.kernel.org>; Sun, 14 Apr 2024 11:57:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713095867; cv=none; b=soE1HTVIOnU9b3qarcZ4ocHMR6tnCOprz/IucpIpDUFVFLZo5uy4f5QL3adaH1KbJqGdJ/rdU0yaQYpHJtmwEwwZOU3ZNZkkDcSEf2oGNpac7e9HP3EilREz0a/Eh80ux3ZbwFtFXWrK8mYFwMqshi932n1qjnHTkvDsMKzfoyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713095867; c=relaxed/simple;
	bh=URiLTEUCqy1TMMcMVyJUqx36OF/AL9ovCxofwPzfEO4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sj8TcSK26Yt+lUpB8NFOpJZlt438kkFuQovSKHE1N3r2KbZ7tXowDy37CXN1z8zxuu8SEkYOSqSeOFht4FdJOj6lWpDiAncABYAbTFLeSAr/+0rRuMjGv2lRY7HKyYcyFBvYWJcwgvfmoXTMPqgYNvH989RiL26f53MDf/hnlaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=C9qQsSF3; arc=none smtp.client-ip=209.85.161.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f42.google.com with SMTP id 006d021491bc7-5aa3af24775so1873833eaf.0
        for <linux-man@vger.kernel.org>; Sun, 14 Apr 2024 04:57:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713095865; x=1713700665; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rHcMgQX7pujK7irwQXAyCv72C52CeunOs/fg8d6ytPs=;
        b=C9qQsSF3JkoDpXZyXC1ILoGx6wSRKcrAk+3Ws09iYAsam49b01dqL1FOjL0+lOwPWe
         eSjoafrDgqFddQS08PGVao0D4mZ5zJBBOhMZocwEOU10rgSmEF4EkMG0PgZVb6ubL3lp
         pTc9JHzqX8Cfxn4Xva6GKZRNddIXs0P9E/fVpUjcZ8Y4O0CsDNv5UmcMy7nPPyHIOraR
         NUnVrWwYe1gt65wT91HxTaV1eS51rxNQSnt5CoGE0EwMJKfJCVYlgG4oYA0Isb7NQQtH
         TYlZwNVjLzOhQs+dFkYdyAvg78rAjJUx7kfKXxjNk8BBcMLvmJKKEF3xijtSJQETMnXT
         j/fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713095865; x=1713700665;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rHcMgQX7pujK7irwQXAyCv72C52CeunOs/fg8d6ytPs=;
        b=ZfRbNux51iP8KBQrp2kj/YMD0v5r/RQUWK94WhZjmmEApSNcWLAiRDoCjcsWCRNzpX
         UnCbQ1s/SeQ4W08CQwRIpWjKXSKlCLWFPby1PnfMN2dsQo7y9TKvVmHelIYAeSoGCWux
         nK2wIH/xo/D/1OwLmXaemzGyaTCYvQGnnfHXx/mjlb6zfpZSTU0/72u+f6ehSxY0U1ce
         /FrBlb5sCbILsOutu0YnqmQgkWDA6gM98WD4wCxHDlT0Ns23YxbPdKy+E36jus85fEjC
         WHPWZNZIGWsTz0MK7NbfOH+5lCD3eWgKaxBoaGcXtGjuSALucpJAW9tPQQSzGfwJF4Be
         aJVg==
X-Forwarded-Encrypted: i=1; AJvYcCXtIjFR9xx1qWzLSYlHxYznIfGdRLYSMXiIQmZUn+0Il6TPsUAkPGkDNRGqiAlIo3cJGjtvSM78XX/Y2BgzRqF3XU5A5QOlIGrA
X-Gm-Message-State: AOJu0YzNwKpP9pUSd/LkvUIYKodj2Z/N2AGrTmKtjG0jDPHRZ2f6TcEH
	QbhtrjvByGg1tnhyn5OTBcpEGS/YEI0rAB3LotuiZ4Sl9dpa6jO2
X-Google-Smtp-Source: AGHT+IF1Uppp/Qa6GdXclzjiuikShmn7JoMcPRr46xCt01MigCdFtwYrNB/luheXWIz3hsaG4tGMfQ==
X-Received: by 2002:a05:6820:1ac2:b0:5ac:5c3c:6aca with SMTP id bu2-20020a0568201ac200b005ac5c3c6acamr7054042oob.0.1713095865187;
        Sun, 14 Apr 2024 04:57:45 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id e21-20020a056820061500b005a4694c37a8sm1639147oow.20.2024.04.14.04.57.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Apr 2024 04:57:44 -0700 (PDT)
Date: Sun, 14 Apr 2024 06:57:43 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Deri James <deri@chuzzlewit.myzen.co.uk>, linux-man@vger.kernel.org
Subject: Re: Linux man-pages PDF book
Message-ID: <20240414115743.mzzwr2bd3j7lw46e@illithid>
References: <Zhu_-FE5sl3vSu1w@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2vl6zr5umpu3n7il"
Content-Disposition: inline
In-Reply-To: <Zhu_-FE5sl3vSu1w@debian>


--2vl6zr5umpu3n7il
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

At 2024-04-14T13:37:15+0200, Alejandro Colomar wrote:
> There's also the page issue.  Now it seems to reset the page number for
> every TH.

This might be a simple issue.  Make sure that you're passing groff (or
troff) an option to set the `C` register to a true value.

groff_man(7):
     -rC1     Number output pages consecutively, in strictly increasing
              sequence, rather than resetting the page number to 1 (or
              the value of register P) with each new man document.

Regards,
Branden

--2vl6zr5umpu3n7il
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmYbxK8ACgkQ0Z6cfXEm
bc4bXQ//RHDhx087i8ajjEb4JPggRLxqXVbyutoNhOPt0dno50vHWUfsnF28VTXw
ZC1r62U6B8Vtu127Lt3VNq9Y7xEL9AynX/XRHNH58Nr+NyMHw57XnXUEUpJoGuvo
3m+TwTitmLam62mxXIzKyTa1SgrfnBIZFWKaBJNukT3Dlmkqd1ZUXmREExbXX5or
acjPKF/7AFAV2ZKG9WjVl6vxYMzKzN+ZS6+EwcztJOoTTKxxSNZEF6Xm/0mmGFVk
cRyMyF1N642knO7XMi6RhjOaKykIdHg9XKWqnoM/4asB7UoQttv+jFaQxMGaCg+u
BoxKceGpzSM+R71KO3LxyEAE1/oZJMy3DrGiyW9exnrxz3o3Ob0tw6miTOLNItiP
umkWhSliglZ1bodfk9Cd6hAfxs7pV+eZqhf4ToqJIx48wNqc4sweWj7dIHVs4M1I
kuUSkH6IqHX76+p1EGOBkuSXUCLFycWhvYtQIOg9TTLn6D+9b19/NW1dkgQKNZcV
MxaeCxjmuj6YrSTsODqK4N181DmjIK7IzegFHinAVPgHSjPGKNurb9e2WOfxNzBo
AIbDeUJT4vK14res2S380SHXf0J9En0WLJG/E2U45yd6lXD2zuIp//qexsLdItkr
BWMhXHEBD0cuXmcw9nLRSgYcUVolHtq06UrWV5i8KYlgOSDT1H8=
=RPDK
-----END PGP SIGNATURE-----

--2vl6zr5umpu3n7il--

