Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E7547639908
	for <lists+linux-man@lfdr.de>; Sun, 27 Nov 2022 01:12:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229548AbiK0AMc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 26 Nov 2022 19:12:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40204 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229459AbiK0AMc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 26 Nov 2022 19:12:32 -0500
Received: from zimbra.cs.ucla.edu (zimbra.cs.ucla.edu [131.179.128.68])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5AB26B35
        for <linux-man@vger.kernel.org>; Sat, 26 Nov 2022 16:12:29 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id F2C03160081;
        Sat, 26 Nov 2022 16:12:28 -0800 (PST)
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id S9R8sCeOumcl; Sat, 26 Nov 2022 16:12:26 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id 31F20160084;
        Sat, 26 Nov 2022 16:12:26 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.9.2 zimbra.cs.ucla.edu 31F20160084
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
        s=78364E5A-2AF3-11ED-87FA-8298ECA2D365; t=1669507946;
        bh=OPfItOegFLnlaL1tVKXZ+kthCB7I78sXHk/fYjcEw38=;
        h=Content-Type:Message-ID:Date:MIME-Version:To:From:Subject;
        b=WzLKUr0ofudkxTEwmHMV7KtIjdqj9TJkw2fVijkgFpvGbvaqsLG9UznN2SROxNsbU
         2FXP5WGFBwpl7CJAY7dJX8ytpoP8rTm4vaU1ckXHDmO42w+fv82d4cfDsEYXGgBF8Z
         DuOVKzJ0Eu1agLFG73TXviNm2LzcxzDsxN+khMGU=
X-Virus-Scanned: amavisd-new at zimbra.cs.ucla.edu
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id YKEOh9swF_QU; Sat, 26 Nov 2022 16:12:25 -0800 (PST)
Received: from [192.168.1.9] (cpe-172-91-119-151.socal.res.rr.com [172.91.119.151])
        by zimbra.cs.ucla.edu (Postfix) with ESMTPSA id A831C160081;
        Sat, 26 Nov 2022 16:12:25 -0800 (PST)
Content-Type: multipart/mixed; boundary="------------LfkEYNZ8Mqlu7VekbdMtTBaM"
Message-ID: <aaab0674-6e77-6f60-0c1a-1cc2188f5ece@cs.ucla.edu>
Date:   Sat, 26 Nov 2022 16:12:25 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
        Geoff Clare <gwc@opengroup.org>, groff@gnu.org,
        Time zone mailing list <tz@iana.org>
References: <20221123134827.10420-1-alx@kernel.org>
 <20221123134827.10420-3-alx@kernel.org>
 <2dc9b4ee-83c4-9a23-82d5-fd314efd648d@cs.ucla.edu>
 <f8fa5d28-034c-4080-98d7-a142f467b45e@cs.ucla.edu>
 <20221126211947.wzhb6zopmbsxqapj@illithid>
Content-Language: en-US
From:   Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
Subject: Re: [PATCH v2 3/4] zic.8: Use correct escape sequences instead of
 special characters
In-Reply-To: <20221126211947.wzhb6zopmbsxqapj@illithid>
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a multi-part message in MIME format.
--------------LfkEYNZ8Mqlu7VekbdMtTBaM
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2022-11-26 13:19, G. Branden Robinson wrote:
> I would attach scans of Tables I and II from "NROFF/TROFF User's
> Manual", the version dated 1976, published with Volume 2 of the Unix
> Programmer's Manual (1979)

Thanks for looking into this. It took me a trip down memory lane as I 
believe I was the first person to submit a computer-typeset PhD thesis 
to UCLA. I used 7th Edition Unix troff along with the C/A/T 
phototypesetter that was troff's main target in the 1970s. (As an aside, 
the C/A/T was why stderr was invented; see Diomidis Spinellis's "The 
Birth of Standard Error" 2013-12-11 
<https://www.spinellis.gr/blog/20131211/>.)

Solaris 10 /usr/bin/troff is largely unchanged from 1970s troff, and 
supports \(ga but none of the other escapes you mention, I expect 
because they were not present in the Bell Labs special font version 4 
and Commercial II that Unix assumed on the C/A/T. The source code of 7th 
Edition Unix troff agrees with Solaris 10 behavior here, and this also 
agrees with 7th Edition Unix /usr/doc/troff/table2 which documents \(ga 
but none of the other escapes you mentioned. I'm a bit surprised that 
the printed manuals you mention disagree with 7th Edition Unix, but 
anyway it doesn't matter all that much since Solaris 10 is what it is.

On other words, on Solaris 10 if I take this file 'foo':

	.nf
	default font
	aq |\(aq| |'|
	ga |\(ga| |`|
	ha |\(ha| |^|
	ti |\(ti| |~|
	.ft CW
	CW font
	aq |\(aq| |'|
	ga |\(ga| |`|
	ha |\(ha| |^|
	ti |\(ti| |~|

and run the shell command:

    /usr/bin/troff foo | /usr/lib/lp/postscript/dpost >foo.ps

I get the attached file foo.ps, and 'evince' says only \(ga works and 
even there it's barely usable in the default font, as shown in the 
attached screenshot foo.png of 'evince' displaying foo.ps.


> .ie \n(.g .q \f(CR!$%&\(aq()*,/:;<=>?@[\e]\(ha\(ga{|}\(ti\fP .
> .el .ie t .q \f(CW!$%&'()*,/:;<=>?@[\e]\(ha\(ga{|}\(ti\fP .
> .    el   .q !$%&'()*,/:;<=>?@[\e]\(ha\(ga{|}\(ti .

With Solaris 10 in mind, in the second line of your proposed code the 
\f(CW...\fP and the \(ga are OK but the \(ha, \(ga, \(ti are dubious so 
I installed the attached patch instead.
--------------LfkEYNZ8Mqlu7VekbdMtTBaM
Content-Type: application/postscript; name="foo.ps"
Content-Disposition: attachment; filename="foo.ps"
Content-Transfer-Encoding: 7bit

%!PS
%%Version: 3.15
%%DocumentFonts: (atend)
%%Pages: (atend)
%%EndComments
%ident	"@(#)lp:filter/postscript/postscript/dpost.ps	1.1"
%
% Version 3.16 prologue for troff files.
%

/#copies 1 store
/aspectratio 1 def
/formsperpage 1 def
/landscape false def
/linewidth .3 def
/magnification 1 def
/margin 0 def
/orientation 0 def
/resolution 720 def
/xoffset 0 def
/yoffset 0 def

/roundpage true def
/useclippath true def
/pagebbox [0 0 612 792] def

/R  /Times-Roman def
/I  /Times-Italic def
/B  /Times-Bold def
/BI /Times-BoldItalic def
/H  /Helvetica def
/HI /Helvetica-Oblique def
/HB /Helvetica-Bold def
/HX /Helvetica-BoldOblique def
/CW /Courier def
/CO /Courier def
/CI /Courier-Oblique def
/CB /Courier-Bold def
/CX /Courier-BoldOblique def
/PA /Palatino-Roman def
/PI /Palatino-Italic def
/PB /Palatino-Bold def
/PX /Palatino-BoldItalic def
/Hr /Helvetica-Narrow def
/Hi /Helvetica-Narrow-Oblique def
/Hb /Helvetica-Narrow-Bold def
/Hx /Helvetica-Narrow-BoldOblique def
/KR /Bookman-Light def
/KI /Bookman-LightItalic def
/KB /Bookman-Demi def
/KX /Bookman-DemiItalic def
/AR /AvantGarde-Book def
/AI /AvantGarde-BookOblique def
/AB /AvantGarde-Demi def
/AX /AvantGarde-DemiOblique def
/NR /NewCenturySchlbk-Roman def
/NI /NewCenturySchlbk-Italic def
/NB /NewCenturySchlbk-Bold def
/NX /NewCenturySchlbk-BoldItalic def
/ZD /ZapfDingbats def
/ZI /ZapfChancery-MediumItalic def
/VR /Varitimes#Roman def
/VI /Varitimes#Italic def
/VB /Varitimes#Bold def
/VX /Varitimes#BoldItalic def
/S  /S def
/S1 /S1 def
/GR /Symbol def

/inch {72 mul} bind def
/min {2 copy gt {exch} if pop} bind def

/setup {
	counttomark 2 idiv {def} repeat pop

	landscape {/orientation 90 orientation add def} if
	/scaling 72 resolution div def
	linewidth setlinewidth
	1 setlinecap

	pagedimensions
	xcenter ycenter translate
	orientation neg rotate
	width 2 div neg height 2 div translate
	xoffset inch yoffset inch translate
	margin 2 div dup neg translate
	magnification dup aspectratio mul scale
	scaling scaling scale

	/Symbol /S Sdefs cf
	/Times-Roman /S1 S1defs cf
	0 0 moveto
} def

/pagedimensions {
	useclippath userdict /gotpagebbox known not and {
		/pagebbox [clippath pathbbox newpath] def
		roundpage currentdict /roundpagebbox known and {roundpagebbox} if
	} if
	pagebbox aload pop
	4 -1 roll exch 4 1 roll 4 copy
	landscape {4 2 roll} if
	sub /width exch def
	sub /height exch def
	add 2 div /xcenter exch def
	add 2 div /ycenter exch def
	userdict /gotpagebbox true put
} def

/pagesetup {
	/page exch def
	currentdict /pagedict known currentdict page known and {
		page load pagedict exch get cvx exec
	} if
} def

/decodingdefs [
	{counttomark 2 idiv {y moveto show} repeat}
	{neg /y exch def counttomark 2 idiv {y moveto show} repeat}
	{neg moveto {2 index stringwidth pop sub exch div 0 32 4 -1 roll widthshow} repeat}
	{neg moveto {spacewidth sub 0.0 32 4 -1 roll widthshow} repeat}
	{counttomark 2 idiv {y moveto show} repeat}
	{neg setfunnytext}
] def

/setdecoding {/t decodingdefs 3 -1 roll get bind def} bind def

/w {neg moveto show} bind def
/m {neg dup /y exch def moveto} bind def
/done {/lastpage where {pop lastpage} if} def

/f {
	dup /font exch def findfont exch
	dup /ptsize exch def scaling div dup /size exch def scalefont setfont
	linewidth ptsize mul scaling 10 mul div setlinewidth
	/spacewidth ( ) stringwidth pop def
} bind def

/changefont {
	/fontheight exch def
	/fontslant exch def
	currentfont [
		1 0
		fontheight ptsize div fontslant sin mul fontslant cos div
		fontheight ptsize div
		0 0
	] makefont setfont
} bind def

/sf {f} bind def

/cf {
	dup length 2 idiv
	/entries exch def
	/chtab exch def
	/newfont exch def

	findfont dup length 1 add dict
	/newdict exch def
	{1 index /FID ne {newdict 3 1 roll put} {pop pop} ifelse} forall

	newdict /Metrics entries dict put
	newdict /Metrics get
	begin
		chtab aload pop
		1 1 entries {pop def} for
		newfont newdict definefont pop
	end
} bind def

%
% A few arrays used to adjust reference points and character widths in some
% of the printer resident fonts. If square roots are too high try changing
% the lines describing /radical and /radicalex to,
%
%	/radical	[0 -75 550 0]
%	/radicalex	[-50 -75 500 0]
%

/Sdefs [
	/bracketlefttp		[220 500]
	/bracketleftbt		[220 500]
	/bracketrighttp		[-70 380]
	/bracketrightbt		[-70 380]
	/braceleftbt		[220 490]
	/bracketrightex		[220 -125 500 0]
	/radical		[0 0 550 0]
	% NeWSprint's \(br is too low, compensate
	statusdict /product get (NeWS Server) eq {
		/radicalex		[-50 100 500 0]
		/parenleftex		[-20 100 0 0]

	} {
		/radicalex		[-50 0 500 0]
		/parenleftex		[-20 -170 0 0]
	} ifelse
	/integral		[100 -50 500 0]
	/infinity		[10 -75 730 0]
] def

/S1defs [
	/underscore		[0 80 500 0]
	/endash			[7 90 650 0]
] def
%%EndProlog
%%BeginSetup
mark
/resolution 720 def
setup
2 setdecoding
%%EndSetup
%%Page: 1 1
save
mark
1 pagesetup
10 R f
(default font)1 471 1 720 120 t
(aq)720 240 w
10 S f
(\372\372 \372)1 183 1 847 240 t
10 R f
(')1030 240 w
10 S f
(\372)1063 240 w
10 R f
(ga)720 360 w
10 S f
(\372)847 360 w
10 S1 f
(\301)897 360 w
10 S f
(\372 \372)1 133 1 930 360 t
10 R f
(`)1063 360 w
10 S f
(\372)1096 360 w
10 R f
(ha)720 480 w
10 S f
(\372\372 \372)1 183 1 847 480 t
10 S1 f
(\303)1030 480 w
10 S f
(\372)1063 480 w
10 R f
(ti)720 600 w
10 S f
(\372\372 \372)1 183 1 809 600 t
10 S1 f
(\304)992 600 w
10 S f
(\372)1025 600 w
10 CW f
(CW font)1 420 1 720 720 t
(aq || |'|)2 540 1 720 840 t
(ga |)1 240 1 720 960 t
10 S1 f
(\301)960 960 w
10 CW f
(| |`|)1 300 1 993 960 t
(ha || |^|)2 540 1 720 1080 t
(ti || |~|)2 540 1 720 1200 t
cleartomark
showpage
restore
%%EndPage: 1 1
%%Trailer
done
%%DocumentFonts: Times-Roman Symbol Courier
%%Pages: 1
--------------LfkEYNZ8Mqlu7VekbdMtTBaM
Content-Type: image/png; name="foo.png"
Content-Disposition: attachment; filename="foo.png"
Content-Transfer-Encoding: base64

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
JGFhMiT5P0+Wc04yxARDAAAAAElFTkSuQmCC
--------------LfkEYNZ8Mqlu7VekbdMtTBaM
Content-Type: text/x-patch; charset=UTF-8;
 name="0001-zic.8-Work-better-with-Solaris-10-troff.patch"
Content-Disposition: attachment;
 filename="0001-zic.8-Work-better-with-Solaris-10-troff.patch"
Content-Transfer-Encoding: base64

RnJvbSA4OTdjMjk2OGYxMjhiNzg1NGE0ODY0MDViYjY4NjY2MjY1YjM4YjI0IE1vbiBTZXAg
MTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBQYXVsIEVnZ2VydCA8ZWdnZXJ0QGNzLnVjbGEuZWR1
PgpEYXRlOiBTYXQsIDI2IE5vdiAyMDIyIDE1OjQ0OjE4IC0wODAwClN1YmplY3Q6IFtQUk9Q
T1NFRF0gKiB6aWMuODogV29yayBiZXR0ZXIgd2l0aCBTb2xhcmlzIDEwIHRyb2ZmLgoKLS0t
CiB6aWMuOCB8IDEgKwogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZmIC0t
Z2l0IGEvemljLjggYi96aWMuOAppbmRleCBjY2QwMTJiMy4uMDE5YTI4OWMgMTAwNjQ0Ci0t
LSBhL3ppYy44CisrKyBiL3ppYy44CkBAIC0zNTAsNiArMzUwLDcgQEAgbm9yCiBUbyBhbGxv
dyBmb3IgZnV0dXJlIGV4dGVuc2lvbnMsCiBhbiB1bnF1b3RlZCBuYW1lIHNob3VsZCBub3Qg
Y29udGFpbiBjaGFyYWN0ZXJzIGZyb20gdGhlIHNldAogLmllIFxuKC5nIC5xIFxmKENSISQl
JlwoYXEoKSosLzo7PD0+P0BbXGVdXChoYVwoZ2F7fH1cKHRpXGZQIC4KKy5lbCAuaWUgdCAu
cSBcZihDVyEkJSYnKCkqLC86Ozw9Pj9AW1xlXV5cKGdhe3x9flxmUCAuCiAuZWwgLnEgISQl
JicoKSosLzo7PD0+P0BbXGVdXmB7fH1+IC4KIC5UUAogLkIgRlJPTQotLSAKMi4zNy4yCgo=


--------------LfkEYNZ8Mqlu7VekbdMtTBaM--
