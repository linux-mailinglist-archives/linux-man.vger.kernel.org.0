Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 545F3771870
	for <lists+linux-man@lfdr.de>; Mon,  7 Aug 2023 04:46:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229865AbjHGCqe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 6 Aug 2023 22:46:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45072 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229587AbjHGCqd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 6 Aug 2023 22:46:33 -0400
Received: from omta002.cacentral1.a.cloudfilter.net (omta002.cacentral1.a.cloudfilter.net [3.97.99.33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86463E6A
        for <linux-man@vger.kernel.org>; Sun,  6 Aug 2023 19:46:32 -0700 (PDT)
Received: from shw-obgw-4001a.ext.cloudfilter.net ([10.228.9.142])
        by cmsmtp with ESMTP
        id SfOsqpUlJ6NwhSqGNq8Q1x; Mon, 07 Aug 2023 02:46:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1691376391; bh=ILdVsW+mSL+wZTLAR7AIE/Q9nJlTzBE0BEpn81rasJA=;
        h=Date:From:Subject:Reply-To:To:Cc:References:In-Reply-To;
        b=JNwzXVh+2VhRrlWurGMvimpyn9B4mlun9+715c254Bx4uLkJM18owkca/HdRLTWfG
         kQWVKN5iDFkamAygYMMC/PFfY/PWzijQEfNvcw9iD3FlEpQCIJxzqw1AG3yQ5COZy3
         yLHyWn+JLUDr91q4MuK/ArnYEFwUS4NPeUZ1TMlhVj6Li5nVW7+5f0xF8mTSJKgfbS
         R3pNUdNSP+QvyCxUZMVuKSd8ySZNt6loGW4znQ/n2jgiDv4oKluaKFF7jsUqv6K8BT
         ASEoU0i0v5EQ0pUfNtmOGBuHiuSvOWURpkW1fClvkng5A/kGkQlLWduamTNqxyUmil
         FuwWgxrs7x2qw==
Received: from [10.0.0.5] ([184.64.102.149])
        by cmsmtp with ESMTP
        id SqGMqNbdQHFsOSqGNqY0QX; Mon, 07 Aug 2023 02:46:31 +0000
X-Authority-Analysis: v=2.4 cv=XZqaca15 c=1 sm=1 tr=0 ts=64d05b07
 a=DxHlV3/gbUaP7LOF0QAmaA==:117 a=DxHlV3/gbUaP7LOF0QAmaA==:17
 a=IkcTkHD0fZMA:10 a=Bfo1rFtExsEw4DxCo20A:9 a=QEXdDO2ut3YA:10
Message-ID: <82937367-538d-46c7-19c8-5bab403fefd5@Shaw.ca>
Date:   Sun, 6 Aug 2023 20:46:30 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
Subject: No 6.05/.01 pdf book available
Reply-To: Brian.Inglis@Shaw.ca
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>
References: <094c0eacf60998465be28c605bef69f2f5742459.1691370798.git.Brian.Inglis@Shaw.ca>
Content-Language: en-CA
Organization: Inglis
In-Reply-To: <094c0eacf60998465be28c605bef69f2f5742459.1691370798.git.Brian.Inglis@Shaw.ca>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfNQVGp9uhDk1kX/vRiguzHNkNxyiqDEYOU12d4yjnjQ0lVCgX0YZl103HHGAVfSKFOg7dHKAvHOLlulTsE13HsxKOnPkONCZpxG/sUeaWQA59Rs0EHYv
 SNtvNcZnUUjgkRpVnBg4npiDWON1AZYWtep2L8y6cPOgvF/OznQRQi78esz2eQbmWKiWh62gAyPmUFJNYwQMgEA5TldEqU63QTd+GmWSBsSuMOjAUQMA4CSV
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

I noticed there appears to be no 6.05/.01 pdf book available yet.
Are there build issues?

When I run the script/LinuxManBook/BuildLinuxMan.pl, after applying the gropdf 
patch, manually in the build dir, I get a pdf, but without any man page footers.

Are there any other scripts which need to be run and/or groff commands or data 
which need to be supplied?

It would be nice to see this eventually added to your RELEASE doc, and maybe 
also to the make scripts.

-- 
Take care. Thanks, Brian Inglis              Calgary, Alberta, Canada

La perfection est atteinte                   Perfection is achieved
non pas lorsqu'il n'y a plus rien à ajouter  not when there is no more to add
mais lorsqu'il n'y a plus rien à retirer     but when there is no more to cut
                                 -- Antoine de Saint-Exupéry
