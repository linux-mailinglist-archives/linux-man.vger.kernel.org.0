Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F359763992E
	for <lists+linux-man@lfdr.de>; Sun, 27 Nov 2022 03:32:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229459AbiK0CcN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 26 Nov 2022 21:32:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49136 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229453AbiK0CcM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 26 Nov 2022 21:32:12 -0500
Received: from zimbra.cs.ucla.edu (zimbra.cs.ucla.edu [131.179.128.68])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B99E613CE4
        for <linux-man@vger.kernel.org>; Sat, 26 Nov 2022 18:32:11 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id 2C55B160081;
        Sat, 26 Nov 2022 18:32:11 -0800 (PST)
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id lOg19MyiSSVZ; Sat, 26 Nov 2022 18:32:10 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id F3884160084;
        Sat, 26 Nov 2022 18:32:09 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.9.2 zimbra.cs.ucla.edu F3884160084
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
        s=78364E5A-2AF3-11ED-87FA-8298ECA2D365; t=1669516330;
        bh=rVJJxbNa8QCZSu+PkNQCZKvgMQOIW1jZMlhfyNUz0+0=;
        h=Message-ID:Date:MIME-Version:To:From:Subject:Content-Type:
         Content-Transfer-Encoding;
        b=LxeQdeMJQxDTl7N2MAUDlFahF4Gb86dOb+Qbe2Z0doQNghmvoLysygEcg3KB8nnAx
         4PbLeHFLnNUcW26oCGUVDunM292EY+hwWL+bhUG08jFwvP1X8OqqpoBu0YMGHH1Pyk
         zbauwrBBlKIv9j9fOo9DZ7hLdGwYMsloqOPLR/Ds=
X-Virus-Scanned: amavisd-new at zimbra.cs.ucla.edu
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id IC0F5c9LmjdG; Sat, 26 Nov 2022 18:32:09 -0800 (PST)
Received: from [192.168.1.9] (cpe-172-91-119-151.socal.res.rr.com [172.91.119.151])
        by zimbra.cs.ucla.edu (Postfix) with ESMTPSA id AA2E9160081;
        Sat, 26 Nov 2022 18:32:09 -0800 (PST)
Message-ID: <e6908ec3-8f9b-1568-e753-a38df6c61da7@cs.ucla.edu>
Date:   Sat, 26 Nov 2022 18:32:09 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>, groff <groff@gnu.org>,
        Deri <deri@chuzzlewit.myzen.co.uk>
References: <842adff8-8d8c-b189-8e6c-34be111b8b19@gmail.com>
 <20221123214019.6w2cv525fmr3akdr@illithid>
 <b91ea285-22f4-5f13-beb2-b0c74cc4db10@cs.ucla.edu>
 <20221126035253.pli53qzgfx6tbax5@illithid>
 <f406b9fd-8c2b-3ea2-d956-086442abfc00@cs.ucla.edu>
 <20221126215604.p3un3a4hxf32h24p@illithid>
From:   Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
Subject: Re: Doubts about a typo fix
In-Reply-To: <20221126215604.p3un3a4hxf32h24p@illithid>
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

On 2022-11-26 13:56, G. Branden Robinson wrote:

> A lot of the pieces are in place to make this work (Deri and I have
> wrangled over gropdf's diagnostic messages in this very area, but I
> think we reached consensus :D ), but it needs integration testing under
> multiple scenarios.

In the meantime I filed an Ubuntu bug here:

https://bugs.launchpad.net/ubuntu/+source/groff/+bug/1998031

Unfortunately I don't have an Ubuntu 22.10 host that's public. The GCC 
Compile Farm has a 22.04 host; perhaps that's good enough.


> I believe Solaris troff to be fossilized

Yes and no. Solaris 10 is no longer supported after January 2024, so if 
it and all the other traditional troffs die out by 2024 we can stop 
worrying about this then.

Solaris 11.4, the only Oracle Solaris version that is planned to be 
supported after January 2024, is based on groff 1.22.3 instead of on 
traditional troff. See:

https://docs.oracle.com/cd/E88353_01/html/E37839/troff-1.html
https://www.illumos.org/issues/12692


Oh, and one more thing. And this is relevant to TZDB! Ubuntu's groff 
ignores the TZ environment variable; see:

https://bugs.launchpad.net/ubuntu/+source/groff/+bug/1908333

This is apparently due to Ubuntu's reproducible-build folks going off 
the deep end. For example, on Ubuntu 22.10:

$ echo $TZ; date; echo '\n[year]-\n[mo]-\n[dy] 
\n[hours]:\n[minutes]:\n[seconds]' | groff -Tascii | grep .

Sat Nov 26 18:30:29 PST 2022
2022-11-27 2:30:29

I hope upstream groff never does this....
