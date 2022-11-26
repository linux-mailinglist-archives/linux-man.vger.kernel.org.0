Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7F8866393C3
	for <lists+linux-man@lfdr.de>; Sat, 26 Nov 2022 04:50:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230011AbiKZDuQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Nov 2022 22:50:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48634 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229514AbiKZDuQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Nov 2022 22:50:16 -0500
Received: from zimbra.cs.ucla.edu (zimbra.cs.ucla.edu [131.179.128.68])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 980D031DEB
        for <linux-man@vger.kernel.org>; Fri, 25 Nov 2022 19:50:15 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id 68F41160078;
        Fri, 25 Nov 2022 19:50:15 -0800 (PST)
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id UHcX0io__wiP; Fri, 25 Nov 2022 19:50:14 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id B293216007F;
        Fri, 25 Nov 2022 19:50:14 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.9.2 zimbra.cs.ucla.edu B293216007F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
        s=78364E5A-2AF3-11ED-87FA-8298ECA2D365; t=1669434614;
        bh=4r+8N2GHMv4QeAlLiwom3stTGqhu6hkNguJFQ1GPehU=;
        h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type:
         Content-Transfer-Encoding;
        b=aRKwcSzQrZ6imZ6xr38ZzLVcOUjYoVRGsa5ExMEcAD9q+/1AKcsNsx2paslqNbh41
         6rbMIv9SLAMNVDUkBNJjvKjlF5eLgxovnMmdKw4lQzrUADPkV1E9349xvAphERRT7i
         KnTbY4ZWDGclT3+qPnAYrN+j9Iy1LgCnCflCPbBY=
X-Virus-Scanned: amavisd-new at zimbra.cs.ucla.edu
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id RsC40SmHDNB2; Fri, 25 Nov 2022 19:50:14 -0800 (PST)
Received: from [192.168.1.9] (cpe-172-91-119-151.socal.res.rr.com [172.91.119.151])
        by zimbra.cs.ucla.edu (Postfix) with ESMTPSA id 7C7E9160078;
        Fri, 25 Nov 2022 19:50:14 -0800 (PST)
Message-ID: <d596cea8-04e4-b10c-1a28-d9baf4c9d2e8@cs.ucla.edu>
Date:   Fri, 25 Nov 2022 19:50:14 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To:     Russ Allbery <eagle@eyrie.org>
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>, groff <groff@gnu.org>,
        Time zone mailing list <tz@iana.org>
References: <842adff8-8d8c-b189-8e6c-34be111b8b19@gmail.com>
 <20221123214019.6w2cv525fmr3akdr@illithid>
 <b91ea285-22f4-5f13-beb2-b0c74cc4db10@cs.ucla.edu>
 <87pmdaqu4a.fsf@hope.eyrie.org>
From:   Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
Subject: Re: [tz] Doubts about a typo fix
In-Reply-To: <87pmdaqu4a.fsf@hope.eyrie.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2022-11-25 19:20, Russ Allbery wrote:
> You have to be very careful with the combination of \f(CW and \fP on
> Solaris 10 nroff

That should be OK, as \f(CW - which is now \f(CR - is used only if \n(.g 
is nonzero, i.e., only if it's groff and not traditional troff.

I toyed with using \f[CW] instead of \f(CW to underscore that it's 
groff-specific. However, that might be overkill given the number of 
non-*roff programs that read these files.
