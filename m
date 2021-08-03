Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 953013DE745
	for <lists+linux-man@lfdr.de>; Tue,  3 Aug 2021 09:36:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234230AbhHCHgd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 3 Aug 2021 03:36:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40410 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234148AbhHCHga (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 3 Aug 2021 03:36:30 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 800E6C06175F
        for <linux-man@vger.kernel.org>; Tue,  3 Aug 2021 00:36:18 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id h13so10710977wrp.1
        for <linux-man@vger.kernel.org>; Tue, 03 Aug 2021 00:36:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=H/jdGRR8VKGL9LSqdlvkC/zirm5eLbevaxYcxoAvl/k=;
        b=hT17tBsmSlEvKs6ntu/hfMtksVwbJHXfgKZt2oh08H9XnjfU5iaqGcg07Q6NUEYZLG
         zfpKVPTpDRlvZpr5S+fD1aNpKyvOCXaRfH5srgKqodWv8wlfBnDT/WHXEoKJnuH4ySc+
         H0qNgSw/kOeDJvsKrq4W91VI5rkDTGw4Iux7e/60cAJwZt484FtJy/yM00XvOVKrb7Ca
         c1wNy4eh180sy55KWbK/6NRhry4EO18LrKBvI3qTdRfNFOJD7J+RmoDanV0PBwWU3D3T
         jPC3tk9xDDy4PXB4jRmt+1biTgag6Eln6B+eAISi9wrJv7UcXobDwhTvAfanIOVl9vHM
         a89A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=H/jdGRR8VKGL9LSqdlvkC/zirm5eLbevaxYcxoAvl/k=;
        b=mS5L4U6SmF1aYDG2/nSeIt34QPKCpyvVV4Xe9/pGe5IEv/o+Cw4+XTXkKPF71Ve3sA
         ufmot3nAUS4eXD/+ugk+ShC7g7LLzO/qrrTzz/KtjhhSDSjX7cTJNDY7OiKdlmcVxOIp
         DPoJgQcJk45fz+rDj0NhFUWBdnUMd4sTfogHKoedP7PP3eBcqpKllA30IPwGut/F53PY
         3/dy+34oplyfKFY/B56NLtE+UKLX0ByS/auTy9MR+uXcZi9jvTVPiqrI2Twj2Zvr11VC
         S5WK2rdjDLazptPWRZrwVbgLLqLLl9GN+KSLy/D9Xc9VXOUeVMCqsaOR5IlBIPB0vyq3
         VH7w==
X-Gm-Message-State: AOAM532txs4BOaDwri20DvnmI/3oVtsFe6H1x7ysfYBKxadOyyDNJ0A3
        x7aNjzQzp37GVsRZ5sDSAI7uqV43TpI=
X-Google-Smtp-Source: ABdhPJy50heghWMiQq9g3m8jYJKUBqmDqzsTsPHbY7FUQNj5BaIXuQqXAZQigEhMxmT+5kOstdJP5Q==
X-Received: by 2002:a5d:6949:: with SMTP id r9mr2854564wrw.159.1627976176430;
        Tue, 03 Aug 2021 00:36:16 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id l2sm13094388wru.67.2021.08.03.00.36.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Aug 2021 00:36:16 -0700 (PDT)
Subject: NeoMutt + GMail signed patches (was Re: [PATCH 2/2] man-pages.7:
 Update non-breaking space advice.)
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        =?UTF-8?Q?Ahelenia_Ziemia=c5=84ska?= 
        <nabijaczleweli@nabijaczleweli.xyz>
References: <20210731034458.6s76okhgjxw42mpx@localhost.localdomain>
 <e097bf4a-7188-e810-7d3b-e4d1469397d3@gmail.com>
 <20210801101221.poigrttumltcdenl@localhost.localdomain>
 <233dc372-453f-713e-13ef-cb59721e806a@gmail.com>
 <20210801114156.w3hmedegg5574zho@localhost.localdomain>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <02923f47-b594-ce8f-68e4-ed9fc0f915af@gmail.com>
Date:   Tue, 3 Aug 2021 09:36:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210801114156.w3hmedegg5574zho@localhost.localdomain>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi, Branden!

On 8/1/21 1:41 PM, G. Branden Robinson wrote:
> At 2021-08-01T12:49:39+0200, Alejandro Colomar (man-pages) wrote:
>> $ apt-file find git-send-email
>> git-doc: /usr/share/doc/git-doc/git-send-email.html
>> git-doc: /usr/share/doc/git-doc/git-send-email.txt
>> git-email: /usr/lib/git-core/git-send-email
>> git-email: /usr/share/man/man1/git-send-email.1.gz
>>
>> You should install git-email if you're on Debian.
> 
> Evidently!  Good grief, why is that split off?  <grumble>
> 
>> apt-cache also helps if you don't know the exact name of the
>> git-send-email file:
> 
> Yup, it was more like I did not even imagine that the package had been
> split up like that.  I thought there must be a licensing problem or
> something.
> 
>>> I did a web search and did not find any reports that NeoMutt does
>>> violence to Git-formatted patches.  Perhaps it is GMail's fault?  (I
>>> use its SMPTS server to send mail.)  Does someone on this list have
>>> experience with this MUA and/or provider?  Is there a trick?
>>
>> I also use gmail, so their servers shouldn't cause any errors, I
>> guess.  But I'm no expert on emailing.
> 
> Damn.  I really like GPG-signing my outbound mails, especially including
> patches.  I try to exemplify the audit trails I advocate.
> 
>> [sendemail]
>> 	smtpuser = alx.manpages
>> 	smtpserver = smtp.googlemail.com
>> 	smtpencryption = tls
>> 	smtpserverport = 587
>> 	smtpPass = my_password_goes_here
> 
> Thanks!  Without some NeoMutt help, it looks like this is my route
> forward.

I found that Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>
also sends signed patches,
and digging through the source of an email,
I found she also uses NeoMutt + GMail.
But her patches always apply.
Maybe this email source gives you enough information:

Cheers,

Alex

-------
Delivered-To: alx.manpages@gmail.com
Received: by 2002:a05:6102:53c:0:0:0:0 with SMTP id m28csp2064687vsa;
         Mon, 2 Aug 2021 15:35:11 -0700 (PDT)
X-Google-Smtp-Source: 
ABdhPJzzp4BPGrUXLCFbVR76cNA983bLz0XEWDh3+8xeCEXGInQFkTYlh6sru4RZm5tPjP7yV910
X-Received: by 2002:a7b:c255:: with SMTP id 
b21mr19141206wmj.100.1627943711365;
         Mon, 02 Aug 2021 15:35:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627943711; cv=none;
         d=google.com; s=arc-20160816;
 
b=sI3QtABQzh6Q/ebHlqUhFzVQRqhtovP1KerNKhAi88rreauKhQ82tX+u3XsOuI9f+b
 
imIU7NmQb37hZ5Hlvp8hDQy3pLYD0i7k2NAndBr1jD/s4QQbkZZMi21XVEL/yAns9fHj
 
IlU1WeXyRbL3cR6d4uCw9PBu+Gv5jzooFlhMDYg/D6HcSHHlxi0JZGwpTtTbLSCSsEiP
 
jjUFkCxYgl+RHdOa1k/djY4l6131wO4O1SY3+qF0a8w49vmhFFFUFsCYGkmn377cgvH0
 
XaDypxmlgxZufbzFh3/utJAQiFqs0V2fY2qxxS+XNES7x8S6vgHysGmDj6HGLcAQsebG
          o4CQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; 
d=google.com; s=arc-20160816;
         h=user-agent:content-disposition:mime-version:message-id:subject:cc
          :to:from:date:dkim-signature;
         bh=WuOhiOrPlib59ycfLhtU1h0LvE6Dt2vv9eCEDOmlIYw=;
 
b=OgNxknkgJhCLOra7a9getzOki39k3KHAra3edRdGH52Rq0eJDQRIdRRPS7D2MQCkhF
 
oyQ3hgtw7MP/6U7kxgvpA3YkC0ENvcxOYUrXf8Kv+zOqhePW3GftN3W3f9LjwCG1uadv
 
dc1Qs71wBnP0EAaOzli2htupKcXAsjdZArCuph+GWL7yK9lmjBAvVZaOs6ZhdSeySBA2
 
DG721R9+b0E4b7OMjRxjakI7P0+ZVnoZbD8dRBgv9I4kQRn1IophlPkghWHdk15yTaV5
 
LeDA6eO06YyPVXfLnkmqKPfl3LSrKXwgtzqz3nuNj7lkViB6lBV/n4DCnbLTmMAVMea4
          BYUw==
ARC-Authentication-Results: i=1; mx.google.com;
        dkim=pass header.i=@nabijaczleweli.xyz header.s=202006 
header.b=CbAIkxCc;
        spf=pass (google.com: domain of 
nabijaczleweli@nabijaczleweli.xyz designates 139.28.40.42 as permitted 
sender) smtp.mailfrom=nabijaczleweli@nabijaczleweli.xyz;
        dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nabijaczleweli.xyz
Return-Path: <nabijaczleweli@nabijaczleweli.xyz>
Received: from tarta.nabijaczleweli.xyz ([139.28.40.42])
         by mx.google.com with ESMTP id 
a28si11597036wrc.570.2021.08.02.15.35.10
         for <alx.manpages@gmail.com>;
         Mon, 02 Aug 2021 15:35:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of 
nabijaczleweli@nabijaczleweli.xyz designates 139.28.40.42 as permitted 
sender) client-ip=139.28.40.42;
Authentication-Results: mx.google.com;
        dkim=pass header.i=@nabijaczleweli.xyz header.s=202006 
header.b=CbAIkxCc;
        spf=pass (google.com: domain of 
nabijaczleweli@nabijaczleweli.xyz designates 139.28.40.42 as permitted 
sender) smtp.mailfrom=nabijaczleweli@nabijaczleweli.xyz;
        dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nabijaczleweli.xyz
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 71F193602F7;
	Tue,  3 Aug 2021 00:35:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=nabijaczleweli.xyz;
	s=202006; t=1627943710;
	bh=WuOhiOrPlib59ycfLhtU1h0LvE6Dt2vv9eCEDOmlIYw=;
	h=Date:From:To:Cc:Subject:From;
	b=CbAIkxCcGiriaw3R5lAXTOd1q9sSjsRNQAUeweWUKCrt2RXaIl1SN5vE+ohE+KYSY
	 I58bYVZOnoCAxZkZQD2diiSJ9dEjMcoghAgE+ac0M3Pf/u5UNZJjyl+msj3KOgJ55/
	 TPBA771poNxsrA79xnSbIUWbwq01QpfslXIXm4PnexVOgbSCWzXZbxKwnwPoLRNa4E
	 /m+70Yf5zpMbxCn1Dndt+0+Mab0zCmmzUob7NOpTthGAWFX/FNgxwIBtmroe+sskez
	 aQArzK67FpOSYxmngCyVFWdyE3TIwzY+tET509tCKWhnyCCqov2naAfCDXKWGxkf++
	 YD+Oe8AAqmRtw==
Date: Tue, 3 Aug 2021 00:35:09 +0200
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx.manpages@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: [PATCH] regex.3: ffix
Message-ID: <20210802223509.ep7fzsm5un7p27aq@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="d3akbsoizxd7rdio"
Content-Disposition: inline
User-Agent: NeoMutt/20210205


--d3akbsoizxd7rdio
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

"address of regcomp() initialized buffer" ->
"address of regcomp()-initialized buffer"

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
  man3/regex.3 | 4 ++--
  1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man3/regex.3 b/man3/regex.3
index b6a83271c..368f48d78 100644
--- a/man3/regex.3
+++ b/man3/regex.3
@@ -66,8 +66,8 @@ All regular expression searching must be done via a compi=
led pattern
  buffer, thus
  .BR regexec ()
  must always be supplied with the address of a
-.BR regcomp ()
-initialized pattern buffer.
+.BR regcomp ()-initialized
+pattern buffer.
  .PP
  .I cflags
  is the
--=20
2.20.1

--d3akbsoizxd7rdio
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmEIcxwACgkQvP0LAY0m
WPHV4BAAkm8MBi/6asJsCuTcaqTR3eMe7St0Zw0pd2ZlFwbZzWUkJWfMlUlWj/Xk
JOzQJ2XMpWgWyqTgFkP/HzVjYqSspqdRBcn4gsbTPBQsNNvucx0GwtLBi+BSksGs
re1B05OrwLlmExQC0H8owJ40mv92igmPpzboSV9mUp4vnMz0dKzd2XgqRAm6uijN
hM38b862cyaJj1yWqKHqkNMWCIApbV2PtIJUVQEFKmzDFRBUQqqGqUII4saLoNBn
O2psVPo3jyH9gjsQg81kozaRQXhczCTE6FzfLmYtESRTVVGmkha++YD4jevgE8a3
EOcT2O7lwPldIHqWbokgV1wlmKXKNRPuOD1SN0eMRRfVjMKr/Mih4+8cI0ezNBq4
P867DEzuCHMIEL6e33P9wmjU9D3KWFm9RuVPN+xu9pwNZMoXvW+Y8W7a2u9syqju
r7sz1nvOOYppPVqyuAvTxU7r0lfEwmwuP3LKTerAfBJP0yVjS4pLWKa5pSxE3oxh
33g+jipT3nYAJzQQS7hcmAHNhCeLG66E5FzVbHLVwT2FuKfz8OsyG2NRL+YrSuwq
D+HDculjFo26yR2XxxVOlYu/yrKIQVkj+FYdgv7DSFV7O2IUG6ZteySLFOvAwEic
H5yeSOADGL6TU46M0b8msCBssm/V3l2oSF+hz280vkvMtC5Itrk=
=1EG3
-----END PGP SIGNATURE-----

--d3akbsoizxd7rdio--
