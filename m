Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 44063636930
	for <lists+linux-man@lfdr.de>; Wed, 23 Nov 2022 19:46:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239262AbiKWSp6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 23 Nov 2022 13:45:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47848 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239489AbiKWSp4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 23 Nov 2022 13:45:56 -0500
Received: from zimbra.cs.ucla.edu (zimbra.cs.ucla.edu [131.179.128.68])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 943238C490
        for <linux-man@vger.kernel.org>; Wed, 23 Nov 2022 10:45:55 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id 5E0BD16006A;
        Wed, 23 Nov 2022 10:45:55 -0800 (PST)
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id atI0WW1QIo0M; Wed, 23 Nov 2022 10:45:54 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id 69D9816006D;
        Wed, 23 Nov 2022 10:45:54 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.9.2 zimbra.cs.ucla.edu 69D9816006D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
        s=78364E5A-2AF3-11ED-87FA-8298ECA2D365; t=1669229154;
        bh=4LLMXsOJ/mR7dnvnuIlv0yOlJb5+x2viZYwZEAsqkhg=;
        h=Content-Type:Message-ID:Date:MIME-Version:Subject:To:From;
        b=tIYzPJVieSIS62hVZi7B7i4VK5jtZAaj7+BmTN8vJHf0ZmH29na+VzGDW3RvmYDfh
         usQrOIY0VB88wEgLgNdOCWB+9JAjKl55aZ4uVLubeLtD4EF/Cim/9dRN4NhdWgCw/r
         VLsZJ4S1JRIZNFjV48rp2KosouaFFYhANt7iSrEQ=
X-Virus-Scanned: amavisd-new at zimbra.cs.ucla.edu
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id uS3QzEKcd7-E; Wed, 23 Nov 2022 10:45:54 -0800 (PST)
Received: from [192.168.1.9] (cpe-172-91-119-151.socal.res.rr.com [172.91.119.151])
        by zimbra.cs.ucla.edu (Postfix) with ESMTPSA id 3429016006A;
        Wed, 23 Nov 2022 10:45:54 -0800 (PST)
Content-Type: multipart/mixed; boundary="------------0iFHSw2OTDruEo4I6k24dRxH"
Message-ID: <66b115ce-1766-5053-9b4a-4aedaad6ee5b@cs.ucla.edu>
Date:   Wed, 23 Nov 2022 10:45:53 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v2 4/4] zic.8: Use correct letter case in page title (TH)
Content-Language: en-US
To:     Alejandro Colomar <alx.manpages@gmail.com>, tz@iana.org
Cc:     linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Ingo Schwarze <schwarze@openbsd.org>
References: <20221123134827.10420-1-alx@kernel.org>
 <20221123134827.10420-4-alx@kernel.org>
From:   Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
In-Reply-To: <20221123134827.10420-4-alx@kernel.org>
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a multi-part message in MIME format.
--------------0iFHSw2OTDruEo4I6k24dRxH
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2022-11-23 05:48, Alejandro Colomar wrote:

> -.TH ZIC 8
> +.TH zic 8

Thanks, I installed the attached more-elaborate patch to the tzdb doc.

--------------0iFHSw2OTDruEo4I6k24dRxH
Content-Type: text/x-patch; charset=UTF-8;
 name="0001-Use-lower-case-page-titles-for-commands.patch"
Content-Disposition: attachment;
 filename="0001-Use-lower-case-page-titles-for-commands.patch"
Content-Transfer-Encoding: base64

RnJvbSAwMmU3MjU4OTE3ZmU0NGM4ODAxOTc4NDkzZmQ1NDc0MjJiNTQ0YmQwIE1vbiBTZXAg
MTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBQYXVsIEVnZ2VydCA8ZWdnZXJ0QGNzLnVjbGEuZWR1
PgpEYXRlOiBXZWQsIDIzIE5vdiAyMDIyIDEwOjI4OjU1IC0wODAwClN1YmplY3Q6IFtQUk9Q
T1NFRF0gVXNlIGxvd2VyIGNhc2UgcGFnZSB0aXRsZXMgZm9yIGNvbW1hbmRzCgpGcm9tIGEg
c3VnZ2VzdGlvbiBieSBHLiBCcmFuZGVuIFJvYmluc29uIHZpYSBBbGVqYW5kcm8gQ29sbWFy
IGluOgpodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1tYW4vMjAyMjExMjMxMzQ4Mjcu
MTA0MjAtNC1hbHhAa2VybmVsLm9yZy9ULyN1CiogZGF0ZS4xLCB6ZHVtcC44LCB6aWMuODog
VXNlIGxvd2VyIGNhc2UgLlRIIGFyZ3VtZW50cy4KLS0tCiBkYXRlLjEgIHwgMiArLQogemR1
bXAuOCB8IDIgKy0KIHppYy44ICAgfCAyICstCiAzIGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0
aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kYXRlLjEgYi9kYXRlLjEK
aW5kZXggMWVjZDYzYTMuLjk1N2I5NWQ0IDEwMDY0NAotLS0gYS9kYXRlLjEKKysrIGIvZGF0
ZS4xCkBAIC0xLDQgKzEsNCBAQAotLlRIIERBVEUgMQorLlRIIGRhdGUgMQogLlNIIE5BTUUK
IGRhdGUgXC0gc2hvdyBhbmQgc2V0IGRhdGUgYW5kIHRpbWUKIC5TSCBTWU5PUFNJUwpkaWZm
IC0tZ2l0IGEvemR1bXAuOCBiL3pkdW1wLjgKaW5kZXggMTMxYTZjYmQuLmVlN2Y5MDczIDEw
MDY0NAotLS0gYS96ZHVtcC44CisrKyBiL3pkdW1wLjgKQEAgLTEsNCArMSw0IEBACi0uVEgg
WkRVTVAgOAorLlRIIHpkdW1wIDgKIC5TSCBOQU1FCiB6ZHVtcCBcLSB0aW1lem9uZSBkdW1w
ZXIKIC5TSCBTWU5PUFNJUwpkaWZmIC0tZ2l0IGEvemljLjggYi96aWMuOAppbmRleCAyNDQ1
NDExMy4uNWI3ODU3NjIgMTAwNjQ0Ci0tLSBhL3ppYy44CisrKyBiL3ppYy44CkBAIC0xLDQg
KzEsNCBAQAotLlRIIFpJQyA4CisuVEggemljIDgKIC5TSCBOQU1FCiB6aWMgXC0gdGltZXpv
bmUgY29tcGlsZXIKIC5TSCBTWU5PUFNJUwotLSAKMi4zNy4yCgo=

--------------0iFHSw2OTDruEo4I6k24dRxH--
