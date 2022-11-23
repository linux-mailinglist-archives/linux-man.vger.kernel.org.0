Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9DC3163691F
	for <lists+linux-man@lfdr.de>; Wed, 23 Nov 2022 19:40:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237705AbiKWSkE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 23 Nov 2022 13:40:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238758AbiKWSkD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 23 Nov 2022 13:40:03 -0500
X-Greylist: delayed 433 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Wed, 23 Nov 2022 10:40:02 PST
Received: from zimbra.cs.ucla.edu (zimbra.cs.ucla.edu [131.179.128.68])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 64B7058BC3
        for <linux-man@vger.kernel.org>; Wed, 23 Nov 2022 10:40:02 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id 9662916006A;
        Wed, 23 Nov 2022 10:32:49 -0800 (PST)
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id 5DDaYNfmX886; Wed, 23 Nov 2022 10:32:49 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id DD99016006D;
        Wed, 23 Nov 2022 10:32:48 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.9.2 zimbra.cs.ucla.edu DD99016006D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
        s=78364E5A-2AF3-11ED-87FA-8298ECA2D365; t=1669228368;
        bh=/s87BmfvZUASdVzP1rvjFFS9DSbazdDkRlEgGJhS+E4=;
        h=Message-ID:Date:MIME-Version:Subject:To:From:Content-Type:
         Content-Transfer-Encoding;
        b=HEvpI8cUYHfTX6SGDv1A78BjL1PlH/SeWFsm+VOtI4dkqegW6QrZN5EngW9N0dJu1
         TCSn2ZuEX2Mfg2jEztX70/TZYxvZIlaCX8E9teqQaMLb+7vbhD99yxWXMVQ+CHw0Se
         cKJ3gjukhUiRDBJ7SySlhJ/uNz7FpekGrFmM+d6w=
X-Virus-Scanned: amavisd-new at zimbra.cs.ucla.edu
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id Uf-SRp5M_7DJ; Wed, 23 Nov 2022 10:32:48 -0800 (PST)
Received: from [192.168.1.9] (cpe-172-91-119-151.socal.res.rr.com [172.91.119.151])
        by zimbra.cs.ucla.edu (Postfix) with ESMTPSA id AC90516006A;
        Wed, 23 Nov 2022 10:32:48 -0800 (PST)
Message-ID: <ab852b8f-2c05-ba10-187d-c7f0e6545dcd@cs.ucla.edu>
Date:   Wed, 23 Nov 2022 10:32:48 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v2 1/4] zic.8: Add public domain notice
Content-Language: en-US
To:     Alejandro Colomar <alx.manpages@gmail.com>, tz@iana.org
Cc:     linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <20221123134827.10420-1-alx@kernel.org>
From:   Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
In-Reply-To: <20221123134827.10420-1-alx@kernel.org>
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

On 2022-11-23 05:48, Alejandro Colomar wrote:

> diff --git a/zic.8 b/zic.8
> index f79148f4..c2c61739 100644
> --- a/zic.8
> +++ b/zic.8
> @@ -1,3 +1,7 @@
> +.\" %%%LICENSE_START(PUBLIC_DOMAIN)
> +.\" This page is in the public domain
> +.\" %%%LICENSE_END
> +.\"
>   .TH ZIC 8
>   .SH NAME
>   zic \- timezone compiler

Let's not do that upstream. The file already contains a public-domain 
notice at the bottom, in a human-readable format that is visible to 
anybody who looks at the printable version of the man page. Let's not 
put in comments for every downstream user with its own idiosyncratic 
machine-readable way of repeating what's already there.
