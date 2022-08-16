Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C8570595306
	for <lists+linux-man@lfdr.de>; Tue, 16 Aug 2022 08:51:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230430AbiHPGvh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 16 Aug 2022 02:51:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35288 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230509AbiHPGvF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 16 Aug 2022 02:51:05 -0400
Received: from mail-oa1-x2c.google.com (mail-oa1-x2c.google.com [IPv6:2001:4860:4864:20::2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 757E5107AEE
        for <linux-man@vger.kernel.org>; Mon, 15 Aug 2022 19:01:39 -0700 (PDT)
Received: by mail-oa1-x2c.google.com with SMTP id 586e51a60fabf-10cf9f5b500so10189066fac.2
        for <linux-man@vger.kernel.org>; Mon, 15 Aug 2022 19:01:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc;
        bh=tTqCZI1x+o2p/fc0tHe7d9iWziclFuSpZhetpLG096M=;
        b=glegQR2d70LTTcBvf4GtzBPRdmSflxcAgCdHMB7aljgLmZ1nLmdAs0tA2p7ozo/uSj
         KeJ2+ITaAdL+Vt1SmB75OL2Kxyl5vsF3HK8F272wdawfzA8iBIDuj0sG2OtkM2QWK3bY
         d4etl6R/7SekEkPYtS2PzssmtNwOeuSmlyvYVAmV3X9/h1VYKq92sztoOU03hDWKypbe
         4wT4UAA2lL3O55O7X4bqmPoWAybNf9YUQdBsg0PqruAOJR7Eo/NY9w3rXp1Y/SOotRpf
         YutoEqA6j4PmyT566L5Ilpf1fas86bETN/WFYjCVkSjCSWBavJalyCy7e7H31R1DbO8e
         g1hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=tTqCZI1x+o2p/fc0tHe7d9iWziclFuSpZhetpLG096M=;
        b=0RdQzEricxt948ZaQGyubQRJejFsLBLUN1WgJMbB2DQu/yArc2i6+W6Wj4lJAgtpvJ
         lwBnWBw+YTt91QttP18t2cwHadAiuN9rKgHZ7xnidNBqZgPzgyuB3HNHvIzczoZyvc9g
         bX2fGR+nKnWgxGRvDI4TJeGjqpXFl134tUdaf5zcD8SnpAIUQPv3ZZCObzKfqOPhJJ2u
         mdlw0PAedFOOOInLr3T90Xypj+8ckAxzv4NLacc9wB7F0eI8iRFfELNW1rMtfofA9sS/
         3s8tj0ke1kj/b0svHCYgePEMlYUgED59eWMu0AdnW7vF9eMUn88YDqolgDvFK5vmZcgj
         baBA==
X-Gm-Message-State: ACgBeo1fjpNWv+Sq1z3fvvG+bZnx++ef006ypO9/FSUYqV+7zO3BZT6z
        I6F87ZnT6IrOsLr3or9SFsI=
X-Google-Smtp-Source: AA6agR4y3mNGrX6vSbk7BiECWYMV7+JkW3WsNSDgPywb/XnzLsirRv3Z6IYxWmsKNn1/h5G4AriLyg==
X-Received: by 2002:a05:6870:4783:b0:118:81e3:27ec with SMTP id c3-20020a056870478300b0011881e327ecmr6432850oaq.146.1660615298831;
        Mon, 15 Aug 2022 19:01:38 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id g127-20020aca3985000000b00342e14a96d5sm2079617oia.25.2022.08.15.19.01.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Aug 2022 19:01:38 -0700 (PDT)
Date:   Mon, 15 Aug 2022 21:01:36 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Ingo Schwarze <schwarze@usta.de>, groff@gnu.org,
        linux-man <linux-man@vger.kernel.org>
Subject: Re: TAB character in groff output
Message-ID: <20220816020136.jo45xonz3ponsott@illithid>
References: <b1a0b24e-0747-9131-90f5-ef61bf4e7d7d@gmail.com>
 <YukqNRfW8D09nt+y@asta-kit.de>
 <e6d2d527-37be-7fab-2872-392906ceb49b@gmail.com>
 <YvT3TxPFGThtbNYW@asta-kit.de>
 <a30777ee-4495-c663-fd8f-47469d64d1af@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="mhegdoeitexmru5u"
Content-Disposition: inline
In-Reply-To: <a30777ee-4495-c663-fd8f-47469d64d1af@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--mhegdoeitexmru5u
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

At 2022-08-16T00:01:40+0200, Alejandro Colomar wrote:
> I like it.  I applied a patch with exactly that (but .MR -> .BR; I'll still
> wait a few years before using that).  BTW, Branden, did you notice? :P

Yes. :D

But waiting a "few years", oof!  Well, it'll come sooner if we can get
our official maintainer/release manager back...

Regards,
Branden

--mhegdoeitexmru5u
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmL6+oAACgkQ0Z6cfXEm
bc6wlQ/9Gk/9vuT8FOJOXyJCHAUMuC6gLKxoXaSfSlREfphkZdbavIiwJbVS0+Ut
/fefUmplWajB63ZN3axpht69R/WbddzniCTb4r5pvhfK8AZnYGq2ez26WZmwpzYr
UOFNocLa/mN4ZeSjVE/1FsEsAdW39rGAw2rV1+zkqIl4f7mJR1vKmWi8j4j2uVpT
sJYc/Q0I5lVaibpplAMGTIsEFmsgQJUizR6ZG5/XnRC6bA92SFsGSnHypBb9wUgB
Be3CpQRyg3cVYllM93sZ/lWBySWYQNRi5w57fsb67oDqEgujpFyXkKMc20qp1B9r
+IJmHhSJMckKWIWteFIESsvs6XW1JmXEYnWR+x8OySBtfu3gprZ4zsKCql4xxn/n
xtsT4Lga7erw9xLtUhBQRi0p54F9Fo3jgOQ+/UUzgst6R8GPxdFvgVcj8mpQ7qsT
kVBrEKy+iMI0l65pQwq/wK5NNGDZhW0kjD1+l7zngbQoQfBMLcPqkoiYA2TrenhZ
yAci+zdimPhfnq3jqqnbrevmDYbc4JShIvEuAhlkp+o/uF66vQ50DVVz7FKJfLtS
hof/EiA848dfAVYVCXHtp3rMwvAeqTlqhaoUrMgDgYFiAi5eElncbZc+CKXK/BHw
zf/JrwJPCT6evqQ4qO0RoeO47g/gjBfM4+araoZmUL+dWtAy1TQ=
=1Bug
-----END PGP SIGNATURE-----

--mhegdoeitexmru5u--
