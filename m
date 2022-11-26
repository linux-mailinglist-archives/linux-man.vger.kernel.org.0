Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EF95A63983D
	for <lists+linux-man@lfdr.de>; Sat, 26 Nov 2022 22:02:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229498AbiKZVCD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 26 Nov 2022 16:02:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34174 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229480AbiKZVCC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 26 Nov 2022 16:02:02 -0500
Received: from zimbra.cs.ucla.edu (zimbra.cs.ucla.edu [131.179.128.68])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B417FB844
        for <linux-man@vger.kernel.org>; Sat, 26 Nov 2022 13:02:00 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id 42E25160081;
        Sat, 26 Nov 2022 13:02:00 -0800 (PST)
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id qo57f9HXME8W; Sat, 26 Nov 2022 13:01:59 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.cs.ucla.edu (Postfix) with ESMTP id 1A9D2160084;
        Sat, 26 Nov 2022 13:01:59 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.9.2 zimbra.cs.ucla.edu 1A9D2160084
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
        s=78364E5A-2AF3-11ED-87FA-8298ECA2D365; t=1669496519;
        bh=qpwZrMsZsBnDKyvsEYS068rbXb2YSq4dKsZ0NRpOPN4=;
        h=Content-Type:Message-ID:Date:MIME-Version:To:From:Subject;
        b=TqTsm5FeORMckS7Ql7ZQsXvo2BfxwlxE12U5K7GSQqeVf0aVlD9s0swx0GBFQK0rn
         jdz2CWaUxsz3FREu3+L04VRRP9wELZtayYi+Cu7qnw8l0dKc/cG5iHehxGFgmn+85o
         bnINV1oI5GHtQYJ+SPYN96pKvOBEgv8HLG+hrlHo=
X-Virus-Scanned: amavisd-new at zimbra.cs.ucla.edu
Received: from zimbra.cs.ucla.edu ([127.0.0.1])
        by localhost (zimbra.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id VqJYI5BY0GVa; Sat, 26 Nov 2022 13:01:58 -0800 (PST)
Received: from [192.168.1.9] (cpe-172-91-119-151.socal.res.rr.com [172.91.119.151])
        by zimbra.cs.ucla.edu (Postfix) with ESMTPSA id A168E160081;
        Sat, 26 Nov 2022 13:01:58 -0800 (PST)
Content-Type: multipart/mixed; boundary="------------ozKI1v70vsSiLOUQ0UpmmKD5"
Message-ID: <f406b9fd-8c2b-3ea2-d956-086442abfc00@cs.ucla.edu>
Date:   Sat, 26 Nov 2022 13:01:58 -0800
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
From:   Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
Subject: Re: Doubts about a typo fix
In-Reply-To: <20221126035253.pli53qzgfx6tbax5@illithid>
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is a multi-part message in MIME format.
--------------ozKI1v70vsSiLOUQ0UpmmKD5
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

[taking tz@iana.org off the cc as this isn't particularly time zone=20
relevant any more]

On 2022-11-25 19:52, G. Branden Robinson wrote:


> If I prepare the following document:
>=20
> $ cat EXPERIMENTS/minus-and-hyphen.man
> .TH foo 1 2022-11-25 "groff test suite"
> .SH Name
> foo \- frobnicate a bar
> .SH Description
> Copy and paste me: foo\-bar-baz.
>=20
> and render it with "groff -Tpdf -man" using either groff 1.22.4 or grof=
f
> Git, then when I copy-and-paste "foo-bar." from the document to a shell
> prompt,...
> behavior I'm familiar with.  I find the minus sign and hyphen glyphs
> fairly distinguishable.  I modified my example file above to switch to
> the CR font.  Attaching (cropped, 7.7KiB) screenshot.

With the same input (that is, with the last line being "Copy and paste=20
me: \f(CRfoo\-bar-baz\fP." and the same commands on Ubuntu 22.10, I get=20
the attached, where the symbols are unfortunately indistinguishable=20
visually. If I instead use -P-e as Deri suggested, then I see this:

   $ groff -Tpdf -P-e -man minus-and-hyphen.man >t-e.pdf
   Failed to open=20
'/usr/share/ghostscript/9.55.0/Resource/Font/NimbusRoman-Regular'

so I'm in font-installation purgatory. I have Ubuntu's gsfonts package=20
installed, but there is no file=20
/usr/share/ghostscript/9.55.0/Resource/Font/NimbusRoman-Regular; instead=20
there's a file=20
/usr/share/ghostscript/9.56.1/Resource/Font/NimbusRoman-Regular.=20
Presumably this is a configuration screwup on the Ubuntu side, as=20
/usr/share/groff/1.22.4/font/devpdf/download is full of references to=20
/usr/share/ghostscript/9.55.0/ but has no references to 9.56.1 which is=20
what is installed.

I assume this is an Ubuntu bug? Should someone file a bug report? At any=20
rate it's not a good situation.


 >> If we did that, Groff would set a source string like "\*-\*-help" as
 >> "=E2=88=92=E2=88=92help", with two instances of U+2212 MINUS SIGN ins=
tead of U+002D
 >> HYPHEN-MINUS. Therefore people couldn't cut and paste code examples
 >> out of HTML or PDF, and into the shell.
 >
 > This hasn't been true for PDFs produced by groff for about 10
 > years.[1][2]  You can copy a U+2212 minus sign and it will paste as a
 > U+002D.

Ah, I guess my problem is that I was using ps2pdf, i.e.:

   groff samp.1 >samp.ps
   ps2pdf samp.ps samp.pdf

So I suppose I should use 'groff -Tpdf' (which I had forgotten about)=20
rather than groff + ps2pdf. Presumably others make the same mistake I=20
do, though....

Anyway, when I run "groff -Tpdf samp.1 >samp-better.pdf", cut and paste=20
now works as expected, which is good.


 >> For the
 >> latter I test with /usr/bin/nroff and /usr/bin/troff on Solaris 10,
 >> which is the oldest troff I know that is still supported.
 >
 > I'm curious to know what that support looks like.  Is there evidence o=
f
 > any _development_?

At this point it's just Solaris bug fixes, mostly security. The latest=20
patches installed on our department's Solaris 10 server are dated four=20
weeks ago (patches to libz). None of this affects traditional troff;=20
/usr/bin/troff is dated 2005.

--------------ozKI1v70vsSiLOUQ0UpmmKD5
Content-Type: image/png; name="Screenshot from 2022-11-26 12-18-53.png"
Content-Disposition: attachment; filename="Screenshot from 2022-11-26
 12-18-53.png"
Content-Transfer-Encoding: base64

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
NOMXTDPGmEg4oTLGmEg4oTLGmEg4oTLGmEg4oTLGmEg4oTLGmEg4oTLGmEg4oTLGmEg4oTLG
mEg4oTLGmEg4oTLGmEg4oTLGmEg4oTLGmEg4oTLGmEg4oTLGmEg4oTLGmEg4oTLGmEg4oTLG
mEg4oTLGmEg4oTLGmEg4oTLGmEg4oTLGmEg4oTLGmEg4oTLGmEg4oTLGmEg4oTLGmEg4oTLG
mEg4oTLGmEg4oTLGmEg4oTLGmEg4oTLGmEg4oTLGmEg4oTLGmEg4oTLGmEg4oTLGmEg4oTLG
mEg4oTLGmEg4oTLGmEg4oTLGmEg4oTLGmEg4oTLGmEg4oTLGmEg4oTLGmEg4oTLGmEi6KNLo
6NGjiI+PF7bHjh0LV1dXYZuI8MknnwjbqqqqCAgIEDFMxhh78ikREbXV6P79+/Dy8kJYWBgA
QE9PD3/++Sesra2FNgUFBfDx8UFBQQFOnDiBHj16PLqoGWPsCaTQV359fX0EBwcL24WFhfD0
9ER5eblQ1qNHD8yYMQMjRozgZMoYey4pfA9VQ0MDvXv3ho6ODgAgPj4eM2fOROMLXHV1dSgr
K4sfJWOMPQUUuofaoFevXti2bRteffVV1NfX4/jx4/jkk0+wcuXKFvepqqrCd999h/j4eGRl
ZcHY2Bje3t4YN24cACA4OBhJSUkAAENDQ8ycORPbtm1DdHQ0nJyc4O/vD2VlZezYsQO///47
LC0t8dFHH0FfX18YIyIiAiEhIaipqYGJiQkWL14MTU3NjpwPxhjrOFLQ/fv3yc3NjYiINm3a
RAAIACkpKdGxY8eIiOjMmTO0fPlyuf1GjhxJVlZWVF9fT4WFhWRjY0MAaO3atUREVF5eTvb2
9gSArKysaOrUqeTj40MaGhoEgGbMmCGU6enpEQAaMWKE0P+ePXtIWVmZtm/fTjKZjFxcXMjR
0ZGkUqmih8YYY6LoUEIlInr77beFpKqlpUU3btxoklCzsrKENikpKURENH/+fAJApqamQjtP
T08CQLq6ulRSUkJERJMnTxb2zczMJCIiPz8/oayoqIju379P2traBIBSU1OJiOiDDz4gABQU
FNSJ08IYY+3X4Xmou3btwr/+9S8AQHl5OTw9PVFQUCDXxszMDHPmzMH06dNhYWEBAKivrwcA
ubZKSkoAAG1tbXTv3h0A0LNnT6He3NwcAGBiYiKUlZSUIDQ0FCUlJQCA9PR0REVFoaysDAAQ
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
9ddfUFFRwYkTJ2BjYwNbW1tERUU97hBFk5GRgalTp2LKlCk8P7cTqqurcfv2bWRlZaGuru6x
xnL//n0kJCTg3r17jzWO1jwNMSqKE2orcnNz8cILL6C2thZ//PEHli1bBi8vLwQGBiI2NhYm
JiZyL2h52llaWsqtkfU4nDt37rGO31lbt26FtbU13nvvPbz11ltwdnZGaWnpY4vn8OHDmD17
NjZv3vzYYmjL0xCjovgrfwuICLNnz0ZZWRl27twp9+Jo4ME7Trds2YLExMTHFOGj0aXL4/uT
WLduHTIyMjBu3LjHFkNn3Lt3D+vWrUNKSsoTs+rvggULoK+vj+vXrz/uUFr0NMSoKE6oLUhO
Tsavv/6KiRMnwtTUtNk2o0ePhrGxsbB98uRJ3L59G3fu3IG2tjbef/99YSWAkpISHDt2DPn5
+RgzZgy2b9+OkpISzJ07F2PHjkVwcDCuXLkCVVVVvPHGG3B1dUVhYSF27NgBZWVlLFu2rNk3
++fl5WHPnj3o2rUrUlNT4ePjg0GDBiEvLw/Hjx9HXl4eZsyYgfXr1yM3NxeBgYFN3s96+vRp
xMbGAniwLExL2jqGtmICHqxeEBISAnNzc2RnZ2PatGno06cPdu7cicDAQAwYMABLly7FO++8
g759+4KI8N133yEsLAzV1dXw8fERXuvYWGFhIU6dOoWbN29iyZIl2LBhA5KSkjBr1iy8/vrr
OHr0KH788Ueoqalhw4YNwvIzbfV/+fJlfPvtt/j666+hqqra4rkpLS1FfHw8Bg8ejKqqKlRV
VUFJSUl4EVBjNTU1SExMRGVlJRwdHaGlpdVsn4q2a4/79+/jxo0bsLOza/HvuqCgAImJiSAi
DB48uMVxi4qKIJPJ0L17d6ioqKC2thbJycmws7Nr9e/on4qxpdtWenp6j26VjMf0lqsn3sGD
B5us4NqagIAAWrBggbC9aNEiMjc3p7y8PCIiOn78OBkYGJCdnR2tWLGCfvzxRxo7dixJJBL6
7bffqK6ujoYNG0Z2dnZy/S5cuJBiYmJaHNfBwYG2bNlCRERHjhwhbW1tqqiooJiYGLKzsyMb
GxtavXo1hYaG0siRI8nMzIzq6+uF/Tdu3Ehz584Vtt955x0CQMnJyU3GausY2oqprq6OLC0t
qaioiIiItm3bJqxwS0Tk5OREvr6+cmMuWrSIQkNDiYho//79JJFI6Pz5801ii4+PJ1dXVzIy
MqK1a9dSTEwMLV26lLp27UoBAQF0+vRpunz5Mtnb25OPj4/C/a9Zs4a6du1KOTk5Lf4blJeX
07/+9S/q27cv6erqkrOzMzk7O5OLiwvFx8fLlFxk6QAACf1JREFUtQ0JCSF7e3t644036K23
3qLevXvT5s2bm/SpaDtFHDp0iPz8/MjHx4dGjRpF8+bNo0GDBgmvwmxs6tSp9MILL9CcOXNo
0qRJZGtrK5yfxm7evElDhgwhAwMDOn36NH311VdkY2NDHh4e1LdvX8rPz3/sMaqrqwv/Fs7O
zmRnZ0eqqqpUWFjYrtjagxNqCz799FMCQGvWrGmzbWJiIkkkEkpNTRXKysvLqVu3bnIJ4uWX
X6ZXXnlF2K6uriYDAwOh7PTp0wSALl++TERE9fX1rS4tXV9fT+PGjaPw8HAiIkpKSiIAdOPG
DSIimjJlCrm6ugrtG/4j8ffffxMRUXZ2Nqmrq1N2drbQ5pdffmkxoSpyDK3FVFRURMrKynTp
0iXhHP3xxx9CXw8n1OjoaHJ0dKTIyEiKjIyk8PBwUlVVpSlTpjQbm5+fH1lYWAjbWVlZBIC+
/vproczf35/69evXrv4rKyubHe9h0dHRNGnSpBbrw8LCaPDgwXTv3j2hrLy8nNzd3enAgQPt
bpeZmUnXr19v9n+3b98W2h06dIjU1NTo22+/lYvnk08+odmzZ8uV1dbWym3fvn1b7m/oYe+9
9x7Z29vT3LlzqaqqiogeJFuZTEZERMXFxZSdnd3s/woKCh5pjP379xc+V1ZW0ogRIygkJKTF
YxEDf+VvQcMaVqmpqW22DQsLg0wmk3v/qaamJlxdXXH58mWhTFlZWe6rkJqaGsaPH49Lly4B
ANzd3dG/f398+eWXGDFiBC5evCisz9UciUSCs2fPoqamBiEhIcL93IYVaCUSCZSVlYX2DV9z
G1YIOH/+PLp06SL3tUpFRaXVY23rGFqLSUdHBxMnToSbmxvee+89rFq1SlgNtjkRERFQV1eX
W54mODgYurq6LZ4PieS/z1kbjrfxOdDQ0BDeNqZo/w/fP++or776Cl999ZXckuuamprYs2cP
XnnlFbz55pvtardjxw4kJyc3O5aOjg6+/fZbYdvV1RWzZ8+Wa7N8+XLY29ujrKxMbpHL0NBQ
pKWlAQB69+6N/Pz8Vo/Ly8sLa9euFbYbv9N4+fLlcgtuNqanp4ejR48+shgjIyMBAPX19Zg6
dSqmTZuGyZMnt3osncUJtQUN62G19AfbWMNS2ffu3YO1tbVQbmJigvT09Fb3NTIyEu6zKikp
wd/fH7Nnz8bNmzdx9OhRrFmzptX9f/nlF+zduxebN2+Go6MjVq9e3Wa8DdLS0lBTUwMi6tQ9
pcbH0FZMP/zwAz766CNs2bIFJ06cwE8//YR+/fo1229WVhYkEgm8vb07HFtrHnX/D7t165bc
OmsNjIyMUFRU1O52n3/+ucJj9+/fv0mZkpIS7O3tkZ6ejoEDByIhIQHe3t4YMmQIHBwcIJVK
ce3atTb7HjZsWIt1W7dufWwxNtxXnTdvHl544QW8++67CsfSUTxtqgWOjo4YP348IiIi8Pvv
v7fYrry8XFgK++E5qcXFxRg8eHCr49y9e1euzbRp02BmZoa1a9eivr6+xasx4MH/8SZMmIDA
wECYmpq2uZjgw0xNTSGVSlu8glBU42NoLaaioiLcvXsXGzduxF9//QU1NTUsXrxYrq+GdbaA
B+t7RUVFNfmWEBoaKlyFd8aj7v9hffv2RUxMTJPy7OxsuZVxFW3XHs09QZfJZEhKSoKtrS0A
wM/PDzt27MC+ffvg7++P5cuXY/v27R0a70mJMTAwEGpqali5ciWABw8vG6/hJjZOqK3YuXMn
jIyMMG/ePKSkpMjVVVVVYfXq1bh27Rrc3NwwZMgQ7N69W0gglZWVuHr1KpYvXy63X+M5iaWl
pTh37hwCAgKEMhUVFQQGBmLfvn3w8vJqNb60tDTU1dXh1q1bICJcuXIFwIMXZ9fX16Ourk4u
oTUslV1bWwsA8PDwgIaGBgICAoSyhIQEAA9+0NCS1o6htZiKiorw/fffA3iQNPz8/OTm8Wpp
aQlX9Hl5eZg4cSJUVFTg6emJyMhI5OfnY+/evYiJiWn2KXLD1XaD+vp6ueNtKGsoV6T/P//8
Ex988IEoE/SXLl0KPz8/ZGVlCWXFxcWYPXu2sPBke9q1R2xsrFzikclkCAwMxKuvvipM8Sot
LZU7r8XFxZg5c2aHxnsSYtyyZQtSUlKwbds2oWzTpk04efKksH3ixAmsX79evIN4pHdonwEF
BQU0a9Ys0tfXJ09PT1qyZAl5e3vTjBkzKCMjQ2iXm5tL7u7uNH36dNq3bx/5+Pg0efLo5uZG
tra2NHfuXNq4cSN5eHjQr7/+2mTMyspKsrCwoLq6ulZjk0qlZGtrSxKJhEaNGkVhYWHUo0cP
6tWrF3366adkZmZGWlpadOzYMcrJySEPDw8CQHPmzBGenJ46dYr09fXJ1NSU3N3dadmyZWRo
aEgLFy6ku3fvNhmzrWNoLaYDBw6QmZkZffPNN/TTTz+Rp6en3MKKmzZtIgA0fvx4iouLIyKi
o0ePkp6eHgEgVVVV8vf3Fx54NHbx4kVh3L1791JpaSmtXLmSANCIESPozz//pNjYWHJxcSEA
FBQURFKptM3+P/74Y1JWVqasrKwW/x0SExPJ3t6ezMzMSFNTk2xtbcnW1pacnJyovLxcru1P
P/1E9vb29Nprr5G3tzfZ2trSN99806RPRdu1ZdWqVWRkZERLliyh9957j1xcXGj69OnUr18/
evfdd4UHSUREoaGhZGlpSRMmTKCxY8eSg4MDHT16lFRUVKh///5yDy+//PJLsrW1JW1tbTIx
MRGOecmSJU9EjFlZWaSkpEQWFhZCbLa2tqSjo0M//PCD0J+XlxcZGxs3+zfVEfyCaQURETIy
MlBSUoJevXq1+FW8oqICpaWlMDExaVI3ZswYaGlp4dChQ8jLy4O5uXmzffz1118ICQnBZ599
1mZcUqkUeXl5MDMzA/Dgt/gA5G7gt4WIkJWVJdwCUFFRaXGCvyLH0FJMWlpaICLU1NTg7t27
MDc3bzJOTk4OjI2N5R4kyWQyZGZmwtjYWJRFGh/WWv9EhIKCAlHfayCTyXDr1i3U1NSgX79+
LT4IVLRde5SVlSEpKQl2dnbQ0dFpUl9RUYGEhATo6urCxsZG7iHfP+WfjFEqlaKqqkruGUBn
cEL9BzUko+PHjzdbT///cOjtt9/GmjVr0LNnz384wra1dQyMPc/4Huo/KD8/v8XfdR88eBCa
mppwcHCAqanpE5lMgdaPgbHnnfKqVatWPe4gngeHDx9GYWEhunXrhoqKClhbW8vdXNfX10d5
eTn+53/+BwEBAY/up3Gd0NYxMPa846/8jDEmEv7KzxhjIuGEyhhjIuGEyhhjIuGEyhhjIuGE
yhhjIuGEyhhjIuGEyhhjIuGEyhhjIuGEyhhjIuGEyhhjIuGEyhhjIuGEyhhjIuGEyhhjIvk/
UINmfcehiQkAAAAASUVORK5CYII=

--------------ozKI1v70vsSiLOUQ0UpmmKD5--
