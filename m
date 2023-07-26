Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BD6DC7636E3
	for <lists+linux-man@lfdr.de>; Wed, 26 Jul 2023 14:56:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231968AbjGZM47 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 26 Jul 2023 08:56:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57304 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230229AbjGZM46 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 26 Jul 2023 08:56:58 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DDFCB97
        for <linux-man@vger.kernel.org>; Wed, 26 Jul 2023 05:56:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1690376172;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=UIAAElWP++eVJ32UquQiVLrccaUa2RySkQQUzt2bkXY=;
        b=EyEiMPQPhoeLK1G6+yjQsOaNE/M4zw8znCIuomneD37o9EXG1Un8syLeSOTzH9RvCxADQ3
        HR5edsTCvRoUF0d3ILVFduVzRaZdw/7/kEkgldkyPa/L3LiM2qEOpu5UdAMxBvoTFeFhcf
        JhhD1Vl2W/udRDDMXYBXHE7vIp5IYBs=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-307-7yk2uulrOcecka1DC8GvSQ-1; Wed, 26 Jul 2023 08:56:10 -0400
X-MC-Unique: 7yk2uulrOcecka1DC8GvSQ-1
Received: by mail-wm1-f70.google.com with SMTP id 5b1f17b1804b1-3fd0fa4d08cso35526525e9.1
        for <linux-man@vger.kernel.org>; Wed, 26 Jul 2023 05:56:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690376169; x=1690980969;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UIAAElWP++eVJ32UquQiVLrccaUa2RySkQQUzt2bkXY=;
        b=HrodW+ObnN+fqgqU4vgTNCWB/LdIr4Nb7svzmyobzCJbJz/7S/xl0eRRNf+Xk8p5HR
         zUvIaWC3FFDooJona7PVrTlFDB7doLEsuA6T4fZDj52lP9ukpW9fBsc996WpEuJ3Du47
         cm0JqvhsfbaXMonis96gOmgk7E09oF3qIwNbGHuT/xPM+f/s79rIVrSDkRbabS9iI1sj
         hem7Pn7f7A7sPVc0UB/rPGZwyu/vcyQ+YxYS81IeLkINB/1We2+pI7jJlOGePHZfMHBZ
         3leQSZkBdi7qZO/1M6u1hvb7rQCsEQqFscSl1ZFREF0Onu/cJCWMOjn979exHW2gxZLz
         zUew==
X-Gm-Message-State: ABy/qLalUzu65bsHhXVKgixmSF6UiNDJPhDIN2ERUmIP3dsQgfAX2d5e
        wQ26ykLgJ3AiM2jH3MT5Ahsrn7V0xVswkaEHsjMFGGs136qBN390tUYktDgwX1OtYXNiaW3I0X5
        fRl3jxLSioPypmUnw4ZTX
X-Received: by 2002:a7b:c84a:0:b0:3fc:62c:8447 with SMTP id c10-20020a7bc84a000000b003fc062c8447mr1371183wml.9.1690376169820;
        Wed, 26 Jul 2023 05:56:09 -0700 (PDT)
X-Google-Smtp-Source: APBJJlH+bFDWMBz4eTujAM9lfQODYGsnJ7BY61+il2jgmL+WLpjyn8NnNZmh/WcGxX153Iy2AmDJhQ==
X-Received: by 2002:a7b:c84a:0:b0:3fc:62c:8447 with SMTP id c10-20020a7bc84a000000b003fc062c8447mr1371169wml.9.1690376169497;
        Wed, 26 Jul 2023 05:56:09 -0700 (PDT)
Received: from cremorrah (ip-86-49-233-183.bb.vodafone.cz. [86.49.233.183])
        by smtp.gmail.com with ESMTPSA id c18-20020a05600c0ad200b003fa968e9c27sm1943443wmr.9.2023.07.26.05.56.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jul 2023 05:56:09 -0700 (PDT)
Date:   Wed, 26 Jul 2023 14:56:07 +0200
From:   =?utf-8?B?VG9tw6HFoSBHb2xlbWJpb3Zza8O9?= <tgolembi@redhat.com>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org,
        Stefan Puiu <stefan.puiu@gmail.com>
Subject: Re: [PATCH v4] abort: clarify consequences of calling abort
Message-ID: <ZMEX5_Mt_rm-QE0i@cremorrah>
References: <5c8c0d88151e70a69c8613ad87c4441472d3ad95.1689867426.git.tgolembi@redhat.com>
 <20230726113836.qery7vznhrm4hqdt@illithid>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230726113836.qery7vznhrm4hqdt@illithid>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Sure I will do that and resend.

Thanks,

    Tomas

On Wed, Jul 26, 2023 at 06:38:36AM -0500, G. Branden Robinson wrote:
> Hi Tomáš,
> 
> At 2023-07-20T17:38:01+0200, Tomáš Golembiovský wrote:
> > Clarify that atexit/on_exit are not called because those are called
> > only on normal process termination (as documented on their respective
> > manual pages).
> > 
> > Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>
> > Cc: Stefan Puiu <stefan.puiu@gmail.com>
> > Signed-off-by: Tomáš Golembiovský <tgolembi@redhat.com>
> [...]
> > +.BR atexit "(3) and " on_exit (3)
> 
> You might recast this line as:
> 
> .BR atexit (3)
> and
> .BR on_exit (3)
> 
> ...because it's (a) a little more readable (no quoted spaces) and (b) it
> be easily pattern-matched to migrate the man page cross references to
> the new `MR` macro in groff 1.23.0 (released at last), and for which I'm
> (slowly) working up a sed script.
> 
> There are plenty of special cases to handle, but stemming the influx of
> new ones will help.  :)
> 
> Regards,
> Branden


