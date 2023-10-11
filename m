Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 616C17C5E88
	for <lists+linux-man@lfdr.de>; Wed, 11 Oct 2023 22:39:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233360AbjJKUjY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 11 Oct 2023 16:39:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233318AbjJKUjY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 11 Oct 2023 16:39:24 -0400
Received: from mail.hallyn.com (mail.hallyn.com [178.63.66.53])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6DA4A9E
        for <linux-man@vger.kernel.org>; Wed, 11 Oct 2023 13:39:21 -0700 (PDT)
Received: by mail.hallyn.com (Postfix, from userid 1001)
        id A441C299; Wed, 11 Oct 2023 15:39:19 -0500 (CDT)
Date:   Wed, 11 Oct 2023 15:39:19 -0500
From:   "Serge E. Hallyn" <serge@hallyn.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     serge@hallyn.com, linux-man@vger.kernel.org
Subject: Re: string_copying.7: Clarifying ustr and zustr
Message-ID: <20231011203919.GA52245@mail.hallyn.com>
References: <ZSVbASi04xwzNFyr@debian>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZSVbASi04xwzNFyr@debian>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_PASS,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, Oct 10, 2023 at 04:09:05PM +0200, Alejandro Colomar wrote:
> Hi Serge,
> 
> I'm clarifying zustr after your suggestion.  Please check this text.

Thanks, this looks good.

> DESCRIPTION
>    Terms (and abbreviations)
>        string (str)
>               is  a  sequence of zero or more non‐null characters fol‐
>               lowed by a null byte.
> 
>        character sequence
>               is a sequence of zero or more  non‐null  characters.   A
>               program  should  never  use a character sequence where a
>               string is required.  However, with appropriate  care,  a
>               string can be used in the place of a character sequence.
> 
>               null‐padded character sequence (zustr)
>                      Character  sequences  can  be contained in fixed‐
>                      width buffers, which contain padding  null  bytes
>                      after the character sequence, to fill the rest of
>                      the  buffer  without  affecting the character se‐
>                      quence; however, those padding null bytes are not
>                      part of the character sequence.  zustr stands for
>                      Zero‐padded Unterminated STRing.   Don’t  confuse
>                      zero‐padded   with  null‐terminated:  zero‐padded
>                      means 0 or more padding zeros (null  characters),
>                      while null‐terminated means exactly 1 terminating
>                      null character.
> 
>               measured character sequence (ustr)
>                      Character  sequence  delimited by its length.  It
>                      may be a slice of a larger character sequence, or
>                      even of a string.  ustr stands  for  Unterminated
>                      STRing.
> 
> The patch is:
> 
> diff --git a/man7/string_copying.7 b/man7/string_copying.7
> index e03c2dda6..c5f374025 100644
> --- a/man7/string_copying.7
> +++ b/man7/string_copying.7
> @@ -102,12 +102,19 @@ .SS Terms (and abbreviations)
>  to fill the rest of the buffer
>  without affecting the character sequence;
>  however, those padding null bytes are not part of the character sequence.
> +.I zustr
> +stands for Zero-padded Unterminated STRing.
> +Don't confuse zero-padded with null-terminated:
> +zero-padded means 0 or more padding zeros (null characters),
> +while null-terminated means exactly 1 terminating null character.
>  .\" ----- DESCRIPTION :: Terms (and abbreviations) :: measured character sequence
>  .TP
>  .IR "measured character sequence " ( ustr )
>  Character sequence delimited by its length.
>  It may be a slice of a larger character sequence,
>  or even of a string.
> +.I ustr
> +stands for Unterminated STRing.
>  .RE
>  .\" ----- DESCRIPTION :: Terms (and abbreviations) :: length (len) ----/
>  .TP
> 
> 
> Thanks,
> Alex
> 
> -- 
> <https://www.alejandro-colomar.es/>


