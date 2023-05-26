Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 14CD771299D
	for <lists+linux-man@lfdr.de>; Fri, 26 May 2023 17:35:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244099AbjEZPfB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 26 May 2023 11:35:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39988 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244192AbjEZPe7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 26 May 2023 11:34:59 -0400
Received: from smtp78.iad3a.emailsrvr.com (smtp78.iad3a.emailsrvr.com [173.203.187.78])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69DCF1BD
        for <linux-man@vger.kernel.org>; Fri, 26 May 2023 08:34:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
        s=20221208-6x11dpa4; t=1685115290;
        bh=Fg0qRKDP9oiYCzt5rXhRsJEy2VA9105zJvRfeEsyj04=;
        h=Date:Subject:To:From:From;
        b=uFQO0y10G7M9u4XQ9N5l++PxYkYPaP1pt0ym6mAIhLkgk8crlq1mTf+pijBlXRO5v
         ZyCU1ykg4gR5i7FVqXFrepTA3L9X85AxHiivwh6HoZRPeARptmKQg1fFEzDY8cuebJ
         QVrYnWSfWA4hii/XlXpfA4QhFUi03yGQum1TRk3k=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp26.relay.iad3a.emailsrvr.com (Authenticated sender: abbotti-AT-mev.co.uk) with ESMTPSA id 0256D4231;
        Fri, 26 May 2023 11:34:49 -0400 (EDT)
Message-ID: <8736b814-5cb7-d891-45b6-9b86062e1078@mev.co.uk>
Date:   Fri, 26 May 2023 16:34:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH] fgetc.3: Describe handling of ungetc(EOF, stream)
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
References: <20230526151941.25428-1-abbotti@mev.co.uk>
Content-Language: en-GB
From:   Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
In-Reply-To: <20230526151941.25428-1-abbotti@mev.co.uk>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Classification-ID: f8a10614-159e-409d-8ad7-50b92b84542c-1-1
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 26/05/2023 16:19, Ian Abbott wrote:
> As per the C standard, calling ungetc() with the character parameter
> equal to EOF causes it to fail, returning EOF.
> 
> Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
> ---
>   man3/fgetc.3 | 8 +++++++-
>   1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/man3/fgetc.3 b/man3/fgetc.3
> index 75dcaeaf6..d6bf62327 100644
> --- a/man3/fgetc.3
> +++ b/man3/fgetc.3
> @@ -62,7 +62,13 @@ A terminating null byte (\[aq]\e0\[aq])
>   is stored after the last character in the buffer.
>   .PP
>   .BR ungetc ()
> -pushes
> +returns
> +.B EOF
> +if the value of
> +.I c
> +equals that of the macro
> +.BR EOF ,
> +otherwise it pushes
>   .I c
>   back to
>   .IR stream ,

Sorry, I've just realized my English grammar usage was a bit poor there. 
  I'll send a v2 patch.

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || MEV Ltd. is a company  )=-
-=( registered in England & Wales.  Regd. number: 02862268.  )=-
-=( Regd. addr.: S11 & 12 Building 67, Europa Business Park, )=-
-=( Bird Hall Lane, STOCKPORT, SK3 0XA, UK. || www.mev.co.uk )=-

