Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 93F7063692B
	for <lists+linux-man@lfdr.de>; Wed, 23 Nov 2022 19:44:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235978AbiKWSnn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 23 Nov 2022 13:43:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46832 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238557AbiKWSnm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 23 Nov 2022 13:43:42 -0500
Received: from zimbra.cs.ucla.edu (zimbra.cs.ucla.edu [131.179.128.68])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 27BC25EF9C
        for <linux-man@vger.kernel.org>; Wed, 23 Nov 2022 10:43:40 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id BCEBB16006A;
        Wed, 23 Nov 2022 10:43:40 -0800 (PST)
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id grvcicIg--O8; Wed, 23 Nov 2022 10:43:40 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id 1DAF816006D;
        Wed, 23 Nov 2022 10:43:40 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.9.2 zimbra.cs.ucla.edu 1DAF816006D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
        s=78364E5A-2AF3-11ED-87FA-8298ECA2D365; t=1669229020;
        bh=w+X0ibDvLsZY22F2ZeyLW3QvaHK1tQ2LvYUME7JBGp8=;
        h=Message-ID:Date:MIME-Version:Subject:To:From:Content-Type:
         Content-Transfer-Encoding;
        b=s5a0uAC1QYZf4eWDTGYUzZ0wqoymKF34jSu9u0LiWizY9n0Xbm7zmrHeSwWX8GlLX
         QU7FfozRxGXKCjJA6Rcw69j7/UQKaJIAVBriP1jpXwsvsaNNvx2lrYlfpVaFVG1DBu
         khRKRhbvbDjI7LH3CtW2TW5TISrFaRI9wrnafriE=
X-Virus-Scanned: amavisd-new at zimbra.cs.ucla.edu
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id h4NFAO4meWE9; Wed, 23 Nov 2022 10:43:40 -0800 (PST)
Received: from [192.168.1.9] (cpe-172-91-119-151.socal.res.rr.com [172.91.119.151])
        by zimbra.cs.ucla.edu (Postfix) with ESMTPSA id D5FBD16006A;
        Wed, 23 Nov 2022 10:43:39 -0800 (PST)
Message-ID: <2dc9b4ee-83c4-9a23-82d5-fd314efd648d@cs.ucla.edu>
Date:   Wed, 23 Nov 2022 10:43:39 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v2 3/4] zic.8: Use correct escape sequences instead of
 special characters
Content-Language: en-US
To:     Alejandro Colomar <alx.manpages@gmail.com>, tz@iana.org
Cc:     linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Geoff Clare <gwc@opengroup.org>, groff@gnu.org
References: <20221123134827.10420-1-alx@kernel.org>
 <20221123134827.10420-3-alx@kernel.org>
From:   Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
In-Reply-To: <20221123134827.10420-3-alx@kernel.org>
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

Thanks, I installed that, with a shorter commit message.
